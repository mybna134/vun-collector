package com.sportsmonitor.logger.location

import android.Manifest
import android.content.Context
import android.content.pm.PackageManager
import androidx.core.content.ContextCompat
import com.amap.api.location.AMapLocation
import com.amap.api.location.AMapLocationClient
import com.amap.api.location.AMapLocationClientOption
import com.amap.api.location.IReGeoLocationCallback
import com.sportsmonitor.logger.BuildConfig
import com.sportsmonitor.logger.settings.SettingsStore
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.TimeoutCancellationException
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlinx.coroutines.withContext
import kotlinx.coroutines.withTimeout
import kotlin.coroutines.resume
import kotlin.coroutines.resumeWithException

data class AmapFix(
    val timeMs: Long,
    val latitude: Double,
    val longitude: Double,
    val accuracyMeters: Double,
    val altitudeMeters: Double?,
    val speedMps: Double?,
    val bearingDeg: Double?,
    val locationType: Int,
    val city: String?,
    val province: String?,
    val district: String?,
) {
    companion object {
        const val SOURCE = "amap_android_sdk"
        const val COORD_SYS = "GCJ02"
    }
}

/** Pure validation rules shared by one-shot and continuous SDK collection. */
internal object AmapFixRules {
    fun valid(timeMs: Long, startedAtMs: Long, nowMs: Long, latitude: Double, longitude: Double,
              accuracyMeters: Double, locationType: Int, coordType: String?): Boolean =
        coordType == AmapFix.COORD_SYS &&
            locationType > 0 && locationType !in setOf(AMapLocation.LOCATION_TYPE_SAME_REQ,
                AMapLocation.LOCATION_TYPE_FIX_CACHE, AMapLocation.LOCATION_TYPE_LAST_LOCATION_CACHE) &&
            timeMs >= startedAtMs - 3_000L && timeMs <= nowMs + 5_000L && nowMs - timeMs <= 10_000L &&
            latitude.isFinite() && longitude.isFinite() && latitude in -90.0..90.0 &&
            longitude in -180.0..180.0 && (latitude != 0.0 || longitude != 0.0) &&
            accuracyMeters.isFinite() && accuracyMeters >= 0.0
}

object AmapConsent {
    private const val PREFS = "amap_location_privacy"
    private const val AGREED = "agreed"
    const val POLICY_URL = "https://lbs.amap.com/pages/privacy/"

    fun agreed(context: Context): Boolean =
        context.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getBoolean(AGREED, false)

    fun setAgreed(context: Context, value: Boolean): Boolean =
        context.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit().putBoolean(AGREED, value).commit()
}

/** Creates SDK clients only after key, permission and privacy checks have passed. */
object AmapLocationSource {
    fun unavailableReason(context: Context): String? = when {
        availableKey(context).isBlank() -> "高德 Android SDK Key 未配置"
        !AmapConsent.agreed(context) -> "尚未同意高德定位隐私说明"
        ContextCompat.checkSelfPermission(context, Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED ->
            "精确定位未授权"
        else -> null
    }

    /** 当前可用 Key：运行时保存的 Key 优先，其次回退到构建时 Key。 */
    fun availableKey(context: Context): String =
        SettingsStore.loadKey(context) ?: BuildConfig.AMAP_ANDROID_KEY

    private fun newClient(context: Context, listener: (AMapLocation) -> Unit): AMapLocationClient {
        unavailableReason(context)?.let { throw IllegalStateException(it) }
        AMapLocationClient.updatePrivacyShow(context.applicationContext, true, true)
        AMapLocationClient.updatePrivacyAgree(context.applicationContext, true)
        AMapLocationClient.setApiKey(availableKey(context))
        val client = AMapLocationClient(context.applicationContext)
        try {
            client.setLocationListener(listener)
            client.setLocationOption(AMapLocationClientOption().apply {
                locationMode = AMapLocationClientOption.AMapLocationMode.Hight_Accuracy
                isNeedAddress = true
                isLocationCacheEnable = false
                interval = 1_000L
            })
            return client
        } catch (error: Exception) {
            client.onDestroy()
            throw error
        }
    }

    private fun parse(location: AMapLocation, startedAtMs: Long): AmapFix? {
        if (location.errorCode != 0) return null
        val now = System.currentTimeMillis()
        if (!AmapFixRules.valid(location.time, startedAtMs, now, location.latitude, location.longitude,
                location.accuracy.toDouble(), location.locationType, location.coordType)) return null
        return AmapFix(location.time, location.latitude, location.longitude, location.accuracy.toDouble(),
            location.altitude.takeIf { location.hasAltitude() && it.isFinite() }?.toDouble(),
            location.speed.takeIf { location.hasSpeed() && it.isFinite() }?.toDouble(),
            location.bearing.takeIf { location.hasBearing() && it.isFinite() }?.toDouble(),
            location.locationType,
            location.city?.trim()?.takeIf(String::isNotEmpty),
            location.province?.trim()?.takeIf(String::isNotEmpty),
            location.district?.trim()?.takeIf(String::isNotEmpty))
    }

    suspend fun await(context: Context, requireCity: Boolean = false, timeoutMs: Long = 30_000L): AmapFix =
        withContext(Dispatchers.Main.immediate) {
            var client: AMapLocationClient? = null
            var lastError = "等待高德定位"
            try {
                withTimeout(timeoutMs) {
                suspendCancellableCoroutine { continuation ->
                    val startedAtMs = System.currentTimeMillis()
                    var regeoRequested = false
                    var pendingFix: AmapFix? = null
                    fun finish(result: AmapFix) {
                        if (continuation.isActive) continuation.resume(result)
                    }
                    try {
                        val current = newClient(context) { location ->
                            if (!continuation.isActive) return@newClient
                            if (location.errorCode != 0) {
                                lastError = "高德定位失败：${location.errorCode} ${location.errorInfo.orEmpty()}"
                                return@newClient
                            }
                            val fix = parse(location, startedAtMs)
                            if (fix == null) {
                                lastError = if (location.coordType != AmapFix.COORD_SYS)
                                    "高德坐标系不是 GCJ-02：${location.coordType}" else "高德定位结果无效或非实时"
                                return@newClient
                            }
                            if (!requireCity || fix.city != null) {
                                finish(fix)
                            } else if (!regeoRequested) {
                                regeoRequested = true
                                pendingFix = fix
                                lastError = "高德 SDK 未返回城市名"
                                client?.getReGeoLocation(location)
                            }
                        }
                        client = current
                        if (requireCity) current.setReGeoLocationCallback(IReGeoLocationCallback { location ->
                            if (!continuation.isActive) return@IReGeoLocationCallback
                            val city = location.city?.trim()?.takeIf(String::isNotEmpty)
                            val original = pendingFix
                            if (location.errorCode == 0 && city != null && original != null) {
                                finish(original.copy(city = city,
                                    province = location.province?.trim()?.takeIf(String::isNotEmpty),
                                    district = location.district?.trim()?.takeIf(String::isNotEmpty)))
                            } else lastError = "高德 SDK 逆地理未返回城市名"
                        })
                        current.startLocation()
                    } catch (error: Exception) {
                        if (continuation.isActive) continuation.resumeWithException(error)
                    }
                }
                }
            } catch (_: TimeoutCancellationException) {
                throw IllegalStateException("$lastError（超时）")
            } finally {
                client?.stopLocation()
                client?.onDestroy()
            }
        }

    fun startContinuous(context: Context, onFix: (AmapFix) -> Unit, onError: (String) -> Unit): AMapLocationClient {
        val startedAtMs = System.currentTimeMillis()
        var lastTimeMs = 0L
        val client = newClient(context) { location ->
            if (location.errorCode != 0) {
                onError("高德定位失败：${location.errorCode} ${location.errorInfo.orEmpty()}")
            } else {
                val fix = parse(location, startedAtMs)
                when {
                    fix == null -> onError(if (location.coordType != AmapFix.COORD_SYS)
                        "高德坐标系不是 GCJ-02：${location.coordType}" else "高德定位结果无效或非实时")
                    fix.timeMs > lastTimeMs -> {
                        lastTimeMs = fix.timeMs
                        onFix(fix)
                    }
                }
            }
        }
        try {
            client.startLocation()
            return client
        } catch (error: Exception) {
            client.onDestroy()
            throw error
        }
    }
}