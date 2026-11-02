package com.sportsmonitor.logger.probe

import android.Manifest
import android.content.Context
import android.content.pm.PackageManager
import android.location.Location
import android.location.LocationListener
import android.location.LocationManager
import android.os.Looper
import androidx.core.content.ContextCompat
import kotlinx.coroutines.suspendCancellableCoroutine
import kotlinx.coroutines.withTimeout
import kotlin.coroutines.resume
import kotlin.coroutines.resumeWithException

/** Obtains a fresh GPS fix for a GeeToken generation without starting recording. */
class LocationAwaiter(private val context: Context) {
    suspend fun await(timeoutMs: Long = 30_000L): Location = withTimeout(timeoutMs) {
        if (ContextCompat.checkSelfPermission(context, Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
            throw SecurityException("需要精确定位权限")
        }
        val manager = context.getSystemService(LocationManager::class.java)
            ?: throw IllegalStateException("无法访问定位服务")
        if (!manager.isProviderEnabled(LocationManager.GPS_PROVIDER)) {
            throw IllegalStateException("请开启系统定位服务")
        }
        suspendCancellableCoroutine { continuation ->
            lateinit var listener: LocationListener
            fun cleanup() = runCatching { manager.removeUpdates(listener) }
            listener = object : LocationListener {
                override fun onLocationChanged(location: Location) {
                    if (location.provider != LocationManager.GPS_PROVIDER ||
                        !location.latitude.isFinite() || !location.longitude.isFinite() ||
                        location.latitude !in -90.0..90.0 || location.longitude !in -180.0..180.0) return
                    if (continuation.isActive) {
                        cleanup()
                        continuation.resume(location)
                    }
                }
            }
            try {
                manager.requestLocationUpdates(LocationManager.GPS_PROVIDER, 1_000L, 0f, listener, Looper.getMainLooper())
            } catch (error: Throwable) {
                continuation.resumeWithException(error)
                return@suspendCancellableCoroutine
            }
            continuation.invokeOnCancellation { cleanup() }
        }
    }
}
