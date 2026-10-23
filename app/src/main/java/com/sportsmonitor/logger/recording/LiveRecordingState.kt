package com.sportsmonitor.logger.recording

import kotlinx.coroutines.flow.MutableStateFlow

data class LiveReading(
    val value: String? = null,
    val timestampEpochMs: Long? = null,
    val status: String = "未采集",
)

data class LiveSession(
    val recordingId: String? = null,
    val readings: Map<String, LiveReading> = emptyMap(),
)

object LiveRecordingState {
    const val GPS = "gps"
    const val ALTITUDE = "altitude"
    val session = MutableStateFlow(LiveSession())

    fun begin(id: String, statuses: Map<String, String>) {
        session.value = LiveSession(id, statuses.mapValues { LiveReading(status = it.value) })
    }

    fun update(key: String, status: String, value: String? = null, time: Long? = null) {
        val current = session.value
        val old = current.readings[key] ?: LiveReading()
        session.value = current.copy(readings = current.readings +
            (key to old.copy(value = value ?: old.value, timestampEpochMs = time ?: old.timestampEpochMs, status = status)))
    }

    fun end() { session.value = LiveSession() }
}
