package com.sportsmonitor.logger.location

/** Android 原生定位（GPS/网络融合）结果，WGS84 坐标。 */
data class GpsFix(
    val timeMs: Long,
    val latitude: Double,
    val longitude: Double,
    val accuracyMeters: Double,
    val altitudeMeters: Double?,
    val speedMps: Double?,
    val bearingDeg: Double?,
    val provider: String?,
    val city: String? = null,
    val province: String? = null,
    val district: String? = null,
) {
    companion object {
        const val SOURCE = "android_gps"
        const val COORD_SYS = "WGS84"
    }
}

/** GPS 位置有效性校验，放宽坐标系检查（Android 原生定位通常返回 WGS84）。 */
internal object GpsFixRules {
    fun valid(timeMs: Long, startedAtMs: Long, nowMs: Long, latitude: Double, longitude: Double,
              accuracyMeters: Double): Boolean =
        latitude.isFinite() && longitude.isFinite() && latitude in -90.0..90.0 &&
            longitude in -180.0..180.0 && (latitude != 0.0 || longitude != 0.0) &&
            accuracyMeters.isFinite() && accuracyMeters >= 0.0 &&
            timeMs >= startedAtMs - 3_000L && timeMs <= nowMs + 5_000L && nowMs - timeMs <= 10_000L
}