package com.sportsmonitor.logger

import android.app.Application
import android.net.Uri
import android.hardware.Sensor
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.viewModelScope
import androidx.room.withTransaction
import com.sportsmonitor.logger.data.LocationSampleEntity
import com.sportsmonitor.logger.data.RecordingEntity
import com.sportsmonitor.logger.data.RecordingExporter
import com.sportsmonitor.logger.data.RecordingStatus
import com.sportsmonitor.logger.data.RecordingSummary
import com.sportsmonitor.logger.data.SampleRules
import com.sportsmonitor.logger.data.SensorSampleEntity
import com.sportsmonitor.logger.auth.ApiException
import com.sportsmonitor.logger.upload.RecordingUploadClient
import java.io.File
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.currentCoroutineContext
import kotlinx.coroutines.ensureActive
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class LoggerViewModel(application: Application) : AndroidViewModel(application) {
    private val app = application as LoggerApplication
    private val database = app.database
    private val dao = database.recordingDao()
    val loginSession = app.auth.session
    val summaries = dao.observeSummaries().stateIn(viewModelScope, SharingStarted.WhileSubscribed(5000), emptyList())
    var detail by mutableStateOf<RecordingEntity?>(null)
        private set
    var selectedSource by mutableStateOf<Int?>(Sensor.TYPE_ACCELEROMETER)
        private set
    val sensorPoints = mutableStateListOf<SensorSampleEntity>()
    val gpsPoints = mutableStateListOf<LocationSampleEntity>()
    var hasMore by mutableStateOf(false)
        private set
    var loading by mutableStateOf(false)
        private set
    var relativeStepValues by mutableStateOf<Map<Long, Double>>(emptyMap())
        private set
    var message by mutableStateOf<String?>(null)
        private set
    var uploadingRecordingId by mutableStateOf<String?>(null)
        private set

    fun clearMessage() { message = null }
    fun showMessage(text: String) { message = text }

    fun openDetail(id: String) {
        selectedSource = Sensor.TYPE_ACCELEROMETER
        sensorPoints.clear()
        gpsPoints.clear()
        detail = null
        viewModelScope.launch { refreshDetail(id) }
    }

    fun chooseSource(source: Int?) {
        selectedSource = source
        sensorPoints.clear()
        gpsPoints.clear()
        hasMore = false
        detail?.id?.let { id -> viewModelScope.launch { loadPage(id, reset = true) } }
    }

    fun refresh() {
        detail?.id?.let { id -> viewModelScope.launch { refreshDetail(id) } }
    }

    private suspend fun refreshDetail(id: String) {
        detail = withContext(Dispatchers.IO) { dao.getRecording(id) }
        sensorPoints.clear()
        gpsPoints.clear()
        loadPage(id, reset = true)
    }

    fun loadMore() {
        val id = detail?.id ?: return
        if (loading || !hasMore) return
        viewModelScope.launch { loadPage(id, reset = false) }
    }

    private suspend fun loadPage(id: String, reset: Boolean) {
        if (loading) return
        loading = true
        try {
            val source = selectedSource
            if (source == null) {
                val offset = if (reset) 0 else gpsPoints.size
                val page = withContext(Dispatchers.IO) { dao.locationPage(id, 100, offset) }
                if (reset) gpsPoints.clear()
                gpsPoints.addAll(page)
                hasMore = page.size == 100
            } else {
                val offset = if (reset) 0 else sensorPoints.size
                val page = withContext(Dispatchers.IO) { dao.sensorPage(id, source, 100, offset) }
                if (reset) sensorPoints.clear()
                sensorPoints.addAll(page)
                hasMore = page.size == 100
                if (source == Sensor.TYPE_STEP_COUNTER) {
                    relativeStepValues = withContext(Dispatchers.IO) {
                        val count = dao.sensorCount(id, Sensor.TYPE_STEP_COUNTER)
                        val all = mutableListOf<SensorSampleEntity>()
                        var next = 0
                        while (next < count) {
                            val batch = dao.sensorPage(id, Sensor.TYPE_STEP_COUNTER, 500, next)
                            if (batch.isEmpty()) break
                            all.addAll(batch)
                            next += batch.size
                        }
                        SampleRules.relativeSteps(all)
                    }
                }
            }
        } finally {
            loading = false
        }
    }

    fun rename(id: String, name: String, note: String) = mutate("记录已更新") {
        require(name.isNotBlank() && name.length <= 100) { "名称须为 1–100 个字符" }
        database.withTransaction {
            val current = requireNotNull(dao.getRecording(id)) { "记录不存在" }
            dao.updateRecording(current.copy(name = name.trim(), note = note))
        }
        refreshDetail(id)
    }

    fun editSensor(sample: SensorSampleEntity, time: Long, x: Double, y: Double?, z: Double?) = mutate("采样点已更新") {
        require(SampleRules.validateSensor(sample.sensorType, time, x, y, z)) { "采样数值或时间无效" }
        database.withTransaction {
            val current = requireNotNull(dao.getSensorSample(sample.id)) { "采样点不存在" }
            require(current.recordingId == sample.recordingId) { "记录不匹配" }
            require(dao.getRecording(sample.recordingId)?.status != RecordingStatus.ACTIVE) { "采集中不可编辑采样点" }
            dao.updateSensorSample(current.copy(timestampEpochMs = time, valueX = x, valueY = y, valueZ = z, edited = true))
        }
        refreshDetail(sample.recordingId)
    }

    fun editGps(sample: LocationSampleEntity, time: Long, lat: Double, lon: Double, accuracy: Double) = mutate("GPS 点已更新") {
        require(SampleRules.validateLocation(time, lat, lon, accuracy)) { "GPS 数值或时间无效" }
        database.withTransaction {
            val current = requireNotNull(dao.getLocationSample(sample.id)) { "GPS 点不存在" }
            require(current.recordingId == sample.recordingId) { "记录不匹配" }
            require(dao.getRecording(sample.recordingId)?.status != RecordingStatus.ACTIVE) { "采集中不可编辑采样点" }
            dao.updateLocationSample(current.copy(timestampEpochMs = time, latitude = lat, longitude = lon, accuracyMeters = accuracy, edited = true))
        }
        refreshDetail(sample.recordingId)
    }

    fun delete(id: String, onDeleted: () -> Unit) = mutate("记录已删除") {
        val rows = dao.deleteStopped(id)
        require(rows == 1) { "只能删除已停止的记录" }
        withContext(Dispatchers.Main) { onDeleted() }
    }

    fun export(id: String, uri: Uri) = mutate("JSON 已导出") {
        withContext(Dispatchers.IO) { RecordingExporter(database).export(app.contentResolver, id, uri, app.cacheDir) }
    }

    fun upload(record: RecordingSummary, templateName: String) {
        if (uploadingRecordingId != null) return
        if (record.status == RecordingStatus.ACTIVE) {
            message = "请先停止采集再上传"
            return
        }
        if (loginSession.value == null) {
            message = "请先在 Settings 登录后上传"
            return
        }
        val name = try { RecordingUploadClient.normalizeTemplateName(templateName) }
        catch (error: IllegalArgumentException) {
            message = error.message ?: "模板名称无效"
            return
        }
        uploadingRecordingId = record.id
        viewModelScope.launch {
            try {
                withContext(Dispatchers.IO) {
                    val context = currentCoroutineContext()
                    var authorization = app.auth.authorizeUpload()
                    val file = File.createTempFile("recording-upload-", ".json", app.cacheDir)
                    try {
                        RecordingExporter(database).export(app.contentResolver, record.id, Uri.fromFile(file), app.cacheDir)
                        val client = RecordingUploadClient(app.auth.api.signer)
                        fun send() = client.upload(file, authorization.session.accessToken, name) {
                            context.ensureActive()
                            app.auth.checkCurrent(authorization)
                        }
                        try { send() } catch (error: ApiException) {
                            if (error.code != "invalid_access_token") throw error
                            app.auth.checkCurrent(authorization)
                            app.auth.expireAccess(authorization)
                            authorization = app.auth.authorizeUpload()
                            send()
                        }
                    } finally {
                        file.delete()
                    }
                }
                message = "模板“$name”上传成功"
            } catch (error: CancellationException) {
                throw error
            } catch (error: Exception) {
                message = error.message ?: "上传失败"
            } finally {
                uploadingRecordingId = null
            }
        }
    }

    private fun mutate(success: String, action: suspend () -> Unit) {
        viewModelScope.launch {
            try {
                action()
                message = success
            } catch (error: CancellationException) {
                throw error
            } catch (error: Exception) {
                message = error.message ?: "操作失败"
            }
        }
    }
}
