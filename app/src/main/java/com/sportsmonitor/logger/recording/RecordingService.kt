package com.sportsmonitor.logger.recording

import android.Manifest
import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.app.Service
import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.content.pm.ServiceInfo
import android.hardware.Sensor
import android.hardware.SensorEvent
import android.hardware.SensorEventListener
import android.hardware.SensorManager
import android.location.Location
import android.location.LocationListener
import android.location.LocationManager
import android.location.OnNmeaMessageListener
import android.os.Handler
import android.os.IBinder
import android.os.Build
import android.os.Looper
import android.os.SystemClock
import androidx.core.app.ServiceCompat
import androidx.core.app.NotificationCompat
import androidx.core.content.ContextCompat
import com.sportsmonitor.logger.LoggerApplication
import com.sportsmonitor.logger.MainActivity
import com.sportsmonitor.logger.data.LocationSampleEntity
import com.sportsmonitor.logger.data.RecordingEntity
import com.sportsmonitor.logger.data.SampleRules
import com.sportsmonitor.logger.data.SensorSampleEntity
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlinx.coroutines.channels.Channel
import kotlinx.coroutines.delay
import kotlinx.coroutines.isActive
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import kotlinx.coroutines.withTimeoutOrNull
import org.json.JSONObject
import java.util.UUID

class RecordingService : Service(), SensorEventListener, LocationListener {
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.Main.immediate)
    private val dao by lazy { (application as LoggerApplication).database.recordingDao() }
    private val sensorManager by lazy { getSystemService(SENSOR_SERVICE) as SensorManager }
    private val locationManager by lazy { getSystemService(LOCATION_SERVICE) as LocationManager }
    private var activeId: String? = null
    private var starting = false
    private var stopping = false
    private var events: Channel<QueuedSample>? = null
    private var writerJob: Job? = null
    private var gpsMonitorJob: Job? = null
    private var wallAnchorMs = 0L
    private var elapsedAnchorNs = 0L
    private val statuses = LinkedHashMap<String, String>()
    private var lastGpsMs: Long? = null
    private var lastGpsLocationTimeMs = 0L
    private var stepTracker = StepTracker()
    private val altitude = GnssAltitude()
    private val pendingLocations = LinkedHashMap<LocationSampleEntity, Job>()
    private var nmeaRegistered = false
    private val nmeaListener = OnNmeaMessageListener { message, timestamp ->
        if (activeId != null && !stopping && timestamp >= wallAnchorMs) altitude.add(message, timestamp)
    }

    private fun unregisterNmea() {
        if (nmeaRegistered) locationManager.removeNmeaListener(nmeaListener)
        nmeaRegistered = false
        altitude.clear()
    }

    private fun enqueueLocation(point: LocationSampleEntity, gpsAltitude: Double?) {
        val reading = altitude.resolve(point.originalLocationTimeMs, gpsAltitude)
        events?.trySend(QueuedSample.LocationPoint(point.copy(
            altitudeMeters = reading.meters, altitudeSource = reading.source,
            altitudeTimestampEpochMs = reading.timestampMs, altitudeMslMeters = reading.mslMeters,
            geoidSeparationMeters = reading.geoidMeters,
        )))
        val display = reading.meters?.let { "%.2f m · %s (WGS84)".format(it, reading.source) } ?: "海拔不可用"
        LiveRecordingState.update(LiveRecordingState.ALTITUDE,
            if (reading.meters != null) "正常" else "海拔不可用", display, point.timestampEpochMs)
        val status = reading.source ?: "海拔不可用"
        if (statuses[LiveRecordingState.ALTITUDE] != status) setStatus(LiveRecordingState.ALTITUDE, status)
    }

    private fun flushPendingLocations() {
        val pending = pendingLocations.toMap()
        pendingLocations.clear()
        for ((point, job) in pending) {
            job.cancel()
            enqueueLocation(point, point.altitudeMeters)
        }
    }

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onCreate() {
        super.onCreate()
        (getSystemService(NOTIFICATION_SERVICE) as NotificationManager).createNotificationChannel(
            NotificationChannel(CHANNEL, "传感器记录", NotificationManager.IMPORTANCE_LOW)
        )
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        when (intent?.action) {
            ACTION_STOP -> scope.launch { stopRecording() }
            ACTION_START -> if (!starting && activeId == null) {
                starting = true
                try {
                    val hasGpsPermission = hasFineLocation()
                    val types = (if (Build.VERSION.SDK_INT >= 34) ServiceInfo.FOREGROUND_SERVICE_TYPE_HEALTH else 0) or
                        (if (hasGpsPermission) ServiceInfo.FOREGROUND_SERVICE_TYPE_LOCATION else 0)
                    ServiceCompat.startForeground(this, NOTIFICATION_ID, notification(), types)
                    scope.launch { startRecording() }
                } catch (error: RuntimeException) {
                    starting = false
                    stopSelf()
                }
            }
        }
        return START_NOT_STICKY
    }

    private suspend fun startRecording() {
        try {
            val now = System.currentTimeMillis()
            altitude.clear()
            lastGpsLocationTimeMs = 0L
            lastGpsMs = null
            stepTracker = StepTracker()
            statuses.clear()
            statuses[LiveRecordingState.ALTITUDE] = "等待海拔"
            wallAnchorMs = now
            elapsedAnchorNs = SystemClock.elapsedRealtimeNanos()
            val id = UUID.randomUUID().toString()
            val canSteps = hasPermission(Manifest.permission.ACTIVITY_RECOGNITION)
            for (type in SampleRules.sensorTypes) {
                val key = type.toString()
                statuses[key] = when {
                    sensorManager.getDefaultSensor(type) == null -> "传感器不可用"
                    (type == Sensor.TYPE_STEP_COUNTER || type == Sensor.TYPE_STEP_DETECTOR) && !canSteps -> "计步权限未授权"
                    else -> "等待数据"
                }
            }
            statuses[LiveRecordingState.GPS] = when {
                !hasFineLocation() -> "精确定位未授权"
                !locationManager.isProviderEnabled(LocationManager.GPS_PROVIDER) -> "GPS 已关闭"
                else -> "等待 GPS"
            }
            withContext(Dispatchers.IO) {
                check(dao.activeId() == null) { "已有采集任务" }
                dao.insertRecording(RecordingEntity(id = id, name = "记录 $now", startMs = now, sourceStatusesJson = statusJson()))
            }
            activeId = id
            LiveRecordingState.begin(id, statuses)
            val queue = Channel<QueuedSample>(Channel.UNLIMITED)
            events = queue
            writerJob = scope.launch(Dispatchers.IO) { writeLoop(queue) }
            for (type in SampleRules.sensorTypes) {
                if (statuses[type.toString()] != "等待数据") continue
                val sensor = sensorManager.getDefaultSensor(type) ?: continue
                val rate = if (type == Sensor.TYPE_STEP_COUNTER || type == Sensor.TYPE_STEP_DETECTOR)
                    SensorManager.SENSOR_DELAY_NORMAL else SensorManager.SENSOR_DELAY_UI
                if (!sensorManager.registerListener(this, sensor, rate)) setStatus(type.toString(), "注册失败")
            }
            registerGps()
            gpsMonitorJob = scope.launch {
                while (isActive) {
                    delay(1000)
                    val stepPermission = hasPermission(Manifest.permission.ACTIVITY_RECOGNITION)
                    for (type in listOf(Sensor.TYPE_STEP_COUNTER, Sensor.TYPE_STEP_DETECTOR)) {
                        if (!stepPermission && statuses[type.toString()] != "计步权限未授权") {
                            sensorManager.getDefaultSensor(type)?.let { sensorManager.unregisterListener(this@RecordingService, it) }
                            setStatus(type.toString(), "计步权限未授权")
                        } else if (stepPermission && statuses[type.toString()] == "计步权限未授权") {
                            sensorManager.getDefaultSensor(type)?.let { sensor ->
                                val registered = sensorManager.registerListener(this@RecordingService, sensor, SensorManager.SENSOR_DELAY_NORMAL)
                                setStatus(type.toString(), if (registered) "等待数据" else "注册失败")
                            }
                        }
                    }
                    if (!hasFineLocation()) {
                        locationManager.removeUpdates(this@RecordingService)
                        unregisterNmea()
                        if (statuses[LiveRecordingState.GPS] != "精确定位未授权")
                            setStatus(LiveRecordingState.GPS, "精确定位未授权")
                    } else if (!locationManager.isProviderEnabled(LocationManager.GPS_PROVIDER)) {
                        if (statuses[LiveRecordingState.GPS] != "GPS 已关闭")
                            setStatus(LiveRecordingState.GPS, "GPS 已关闭")
                    } else if (statuses[LiveRecordingState.GPS] == "精确定位未授权" ||
                        statuses[LiveRecordingState.GPS] == "GPS 已关闭") {
                        setStatus(LiveRecordingState.GPS, "等待 GPS")
                        registerGps()
                    } else if ((lastGpsMs == null || System.currentTimeMillis() - lastGpsMs!! > 3000) &&
                        statuses[LiveRecordingState.GPS] != "等待 GPS") {
                        setStatus(LiveRecordingState.GPS, "等待 GPS")
                    }
                }
            }
        } catch (error: Exception) {
            sensorManager.unregisterListener(this)
            locationManager.removeUpdates(this)
            flushPendingLocations()
            unregisterNmea()
            events?.close()
            writerJob?.join()
            activeId?.let { id -> withContext(Dispatchers.IO) { dao.interruptActive(System.currentTimeMillis()) } }
            activeId = null
            LiveRecordingState.end()
            stopSelf()
        } finally {
            starting = false
        }
    }

    private fun registerGps() {
        if (!hasFineLocation() || !locationManager.isProviderEnabled(LocationManager.GPS_PROVIDER)) return
        try {
            if (!nmeaRegistered) nmeaRegistered = locationManager.addNmeaListener(nmeaListener, Handler(Looper.getMainLooper()))
            locationManager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 1000L, 0f, this, Looper.getMainLooper())
        } catch (_: SecurityException) {
            setStatus(LiveRecordingState.GPS, "精确定位未授权")
        } catch (_: IllegalArgumentException) {
            setStatus(LiveRecordingState.GPS, "GPS 不可用")
        }
    }

    private suspend fun stopRecording() {
        if (stopping) return
        stopping = true
        sensorManager.unregisterListener(this)
        locationManager.removeUpdates(this)
        gpsMonitorJob?.cancel()
        flushPendingLocations()
        unregisterNmea()
        events?.close()
        writerJob?.join()
        activeId?.let { id ->
            withContext(Dispatchers.IO) {
                dao.updateSourceStatuses(id, statusJson())
                dao.stopRecording(id, System.currentTimeMillis())
            }
        }
        activeId = null
        events = null
        LiveRecordingState.end()
        ServiceCompat.stopForeground(this, ServiceCompat.STOP_FOREGROUND_REMOVE)
        stopSelf()
    }

    override fun onSensorChanged(event: SensorEvent) {
        val id = activeId ?: return
        if (stopping) return
        val type = event.sensor.type
        if (type !in SampleRules.sensorTypes) return
        val x = event.values.getOrNull(0)?.toDouble() ?: return
        val y = if (SampleRules.isVector(type)) event.values.getOrNull(1)?.toDouble() else null
        val z = if (SampleRules.isVector(type)) event.values.getOrNull(2)?.toDouble() else null
        val time = wallAnchorMs + (event.timestamp - elapsedAnchorNs) / 1_000_000L
        if (!SampleRules.validateSensor(type, time, x, y, z)) return
        val sample = SensorSampleEntity(
            recordingId = id, sensorType = type, timestampEpochMs = time,
            originalEventTimestampNs = event.timestamp, valueX = x, valueY = y, valueZ = z,
        )
        events?.trySend(QueuedSample.SensorPoint(sample))
        val display = when (type) {
            Sensor.TYPE_STEP_COUNTER -> "${stepTracker.accept(x).toLong()} 步（原始 ${x.toLong()}）"
            Sensor.TYPE_STEP_DETECTOR -> "单步 +1"
            else -> if (y != null && z != null) "%.3f, %.3f, %.3f %s".format(x, y, z, SampleRules.unit(type))
                else "%.3f %s".format(x, SampleRules.unit(type))
        }
        LiveRecordingState.update(type.toString(), "正常", display, time)
        if (statuses[type.toString()] != "正常") setStatus(type.toString(), "正常")
    }

    override fun onAccuracyChanged(sensor: Sensor?, accuracy: Int) = Unit

    override fun onLocationChanged(location: Location) {
        val id = activeId ?: return
        if (stopping || location.provider != LocationManager.GPS_PROVIDER) return
        if (location.time <= lastGpsLocationTimeMs) return
        val accuracy = if (location.hasAccuracy()) location.accuracy.toDouble() else 0.0
        if (!SampleRules.validateLocation(location.time, location.latitude, location.longitude, accuracy)) return
        val point = LocationSampleEntity(
            recordingId = id, timestampEpochMs = location.time,
            originalLocationTimeMs = location.time, latitude = location.latitude,
            longitude = location.longitude, accuracyMeters = accuracy,
            altitudeMeters = if (location.hasAltitude()) location.altitude.takeIf(Double::isFinite) else null,
        )
        pendingLocations[point] = scope.launch {
            delay(350) // Let the GGA sentence for this fix arrive after Location callbacks.
            pendingLocations.remove(point)
            if (activeId == id && !stopping) enqueueLocation(point, point.altitudeMeters)
        }
        lastGpsLocationTimeMs = location.time
        lastGpsMs = System.currentTimeMillis()
        LiveRecordingState.update(
            LiveRecordingState.GPS, "正常",
            "%.6f, %.6f (±%.1f m)".format(location.latitude, location.longitude, accuracy), location.time,
        )
        if (statuses[LiveRecordingState.GPS] != "正常") setStatus(LiveRecordingState.GPS, "正常")
    }

    override fun onProviderDisabled(provider: String) {
        if (provider == LocationManager.GPS_PROVIDER) {
            flushPendingLocations()
            unregisterNmea()
            setStatus(LiveRecordingState.GPS, "GPS 已关闭")
        }
    }

    override fun onProviderEnabled(provider: String) {
        if (provider == LocationManager.GPS_PROVIDER) {
            setStatus(LiveRecordingState.GPS, "等待 GPS")
            registerGps()
        }
    }

    private suspend fun writeLoop(queue: Channel<QueuedSample>) {
        while (true) {
            val firstResult = withTimeoutOrNull(1000) { queue.receiveCatching() } ?: continue
            val first = firstResult.getOrNull() ?: break
            val sensors = ArrayList<SensorSampleEntity>()
            val locations = ArrayList<LocationSampleEntity>()
            add(first, sensors, locations)
            val deadlineMs = SystemClock.elapsedRealtime() + 1000L
            while (sensors.size + locations.size < 250) {
                val remainingMs = deadlineMs - SystemClock.elapsedRealtime()
                if (remainingMs <= 0) break
                val nextResult = withTimeoutOrNull(remainingMs) { queue.receiveCatching() } ?: break
                val next = nextResult.getOrNull() ?: break
                add(next, sensors, locations)
            }
            if (sensors.isNotEmpty() || locations.isNotEmpty()) {
                if (sensors.isNotEmpty()) dao.insertSensorSamples(sensors)
                if (locations.isNotEmpty()) dao.insertLocationSamples(locations)
            }
        }
    }

    private fun add(item: QueuedSample, sensors: MutableList<SensorSampleEntity>, locations: MutableList<LocationSampleEntity>) {
        when (item) {
            is QueuedSample.SensorPoint -> sensors += item.value
            is QueuedSample.LocationPoint -> locations += item.value
        }
    }

    private fun setStatus(key: String, status: String) {
        statuses[key] = status
        LiveRecordingState.update(key, status)
        activeId?.let { id -> scope.launch(Dispatchers.IO) { dao.updateSourceStatuses(id, statusJson()) } }
    }

    private fun statusJson(): String = JSONObject(statuses as Map<*, *>).toString()
    private fun hasFineLocation() = hasPermission(Manifest.permission.ACCESS_FINE_LOCATION)
    private fun hasPermission(permission: String) =
        ContextCompat.checkSelfPermission(this, permission) == PackageManager.PERMISSION_GRANTED

    private fun notification(): Notification {
        val open = PendingIntent.getActivity(
            this, 0, Intent(this, MainActivity::class.java), PendingIntent.FLAG_IMMUTABLE or PendingIntent.FLAG_UPDATE_CURRENT,
        )
        val stop = PendingIntent.getService(
            this, 1, Intent(this, RecordingService::class.java).setAction(ACTION_STOP),
            PendingIntent.FLAG_IMMUTABLE or PendingIntent.FLAG_UPDATE_CURRENT,
        )
        return NotificationCompat.Builder(this, CHANNEL)
            .setSmallIcon(android.R.drawable.ic_menu_compass)
            .setContentTitle("正在记录传感器与 GPS")
            .setContentText("点击返回应用；也可从通知停止")
            .setContentIntent(open)
            .addAction(android.R.drawable.ic_media_pause, "停止", stop)
            .setOngoing(true)
            .build()
    }

    override fun onDestroy() {
        sensorManager.unregisterListener(this)
        locationManager.removeUpdates(this)
        gpsMonitorJob?.cancel()
        flushPendingLocations()
        unregisterNmea()
        events?.close()
        scope.cancel()
        super.onDestroy()
    }

    companion object {
        const val ACTION_START = "com.sportsmonitor.logger.START"
        const val ACTION_STOP = "com.sportsmonitor.logger.STOP"
        private const val CHANNEL = "recording"
        private const val NOTIFICATION_ID = 1001

        fun start(context: Context) = ContextCompat.startForegroundService(
            context, Intent(context, RecordingService::class.java).setAction(ACTION_START)
        )

        fun stop(context: Context) = context.startService(
            Intent(context, RecordingService::class.java).setAction(ACTION_STOP)
        )
    }
}

private sealed interface QueuedSample {
    data class SensorPoint(val value: SensorSampleEntity) : QueuedSample
    data class LocationPoint(val value: LocationSampleEntity) : QueuedSample
}

internal class StepTracker {
    private var baseline: Double? = null
    private var previous: Double? = null
    private var offset = 0.0

    fun accept(raw: Double): Double {
        if (baseline == null) baseline = raw
        if (previous != null && raw < previous!!) {
            offset += previous!! - baseline!!
            baseline = raw
        }
        previous = raw
        return offset + raw - baseline!!
    }
}
