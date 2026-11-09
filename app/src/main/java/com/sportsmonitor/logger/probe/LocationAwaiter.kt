package com.sportsmonitor.logger.probe

import android.content.Context
import android.os.Looper
import com.google.android.gms.location.FusedLocationProviderClient
import com.google.android.gms.location.LocationCallback
import com.google.android.gms.location.LocationRequest
import com.google.android.gms.location.LocationResult
import com.google.android.gms.location.LocationServices
import com.google.android.gms.location.Priority
import com.sportsmonitor.logger.location.AmapFix
import com.sportsmonitor.logger.location.AmapLocationSource
import com.sportsmonitor.logger.location.GpsFix
import com.sportsmonitor.logger.location.GpsFixRules
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.TimeoutCancellationException
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlinx.coroutines.withContext
import kotlinx.coroutines.withTimeout
import kotlin.coroutines.resume
import kotlin.coroutines.resumeWithException

/** Obtains GPS fix (for GeeToken pre-location) or AMap fix (for city collection). */
class LocationAwaiter(private val context: Context) {
    private val fusedClient: FusedLocationProviderClient = LocationServices.getFusedLocationProviderClient(context)

    /** Gets a single WGS84 GPS fix for GeeToken pre-location. */
    suspend fun await(timeoutMs: Long = 30_000L): GpsFix =
        withContext(Dispatchers.Main.immediate) {
            val startedAtMs = System.currentTimeMillis()
            try {
                withTimeout(timeoutMs) {
                    suspendCancellableCoroutine<GpsFix> { continuation ->
                        val request = createLocationRequest()
                        val callback = createLocationCallback(continuation, startedAtMs)
                        fusedClient.requestLocationUpdates(request, callback, Looper.getMainLooper())
                            .addOnFailureListener { e ->
                                if (continuation.isActive) {
                                    continuation.resumeWithException(IllegalStateException("GPS 定位请求失败：${e.message ?: e.javaClass.simpleName}"))
                                }
                            }
                        continuation.invokeOnCancellation {
                            fusedClient.removeLocationUpdates(callback)
                        }
                    }
                }
            } catch (e: TimeoutCancellationException) {
                throw IllegalStateException("等待 GPS 定位（超时）")
            } catch (e: CancellationException) {
                throw e
            } catch (e: Exception) {
                throw IllegalStateException("等待 GPS 定位：${e.message ?: e.javaClass.simpleName}")
            }
        }

    private fun createLocationRequest(): LocationRequest {
        return LocationRequest.Builder(Priority.PRIORITY_HIGH_ACCURACY, 0)
            .setMinUpdateDistanceMeters(0f)
            .build()
    }

    private fun createLocationCallback(
        continuation: kotlinx.coroutines.CancellableContinuation<GpsFix>,
        startedAtMs: Long
    ): LocationCallback = object : LocationCallback() {
        override fun onLocationResult(locationResult: LocationResult) {
            if (!continuation.isActive) return
            val location = locationResult.lastLocation ?: return
            val fix = parseLocation(location, startedAtMs)
            if (fix != null) {
                continuation.resume(fix)
            } else {
                continuation.resumeWithException(IllegalStateException("GPS 定位结果无效或非实时"))
            }
        }
    }

    /** Gets a GCJ-02 AMap fix with city for city collection. */
    suspend fun awaitCity(timeoutMs: Long = 30_000L): AmapFix =
        AmapLocationSource.await(context, requireCity = true, timeoutMs = timeoutMs)

    private fun parseLocation(location: android.location.Location, startedAtMs: Long): GpsFix? {
        val now = System.currentTimeMillis()
        if (!GpsFixRules.valid(location.time, startedAtMs, now, location.latitude, location.longitude, location.accuracy.toDouble())) {
            return null
        }
        return GpsFix(
            timeMs = location.time,
            latitude = location.latitude,
            longitude = location.longitude,
            accuracyMeters = location.accuracy.toDouble(),
            altitudeMeters = if (location.hasAltitude() && location.altitude.isFinite()) location.altitude.toDouble() else null,
            speedMps = if (location.hasSpeed() && location.speed.isFinite()) location.speed.toDouble() else null,
            bearingDeg = if (location.hasBearing() && location.bearing.isFinite()) location.bearing.toDouble() else null,
            provider = location.provider,
        )
    }
}