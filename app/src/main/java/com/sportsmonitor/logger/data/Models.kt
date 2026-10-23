package com.sportsmonitor.logger.data

import androidx.room.Entity
import androidx.room.ForeignKey
import androidx.room.Index
import androidx.room.PrimaryKey

object RecordingStatus {
    const val ACTIVE = "active"
    const val STOPPED = "stopped"
    const val INTERRUPTED = "interrupted"
}

@Entity(tableName = "recordings")
data class RecordingEntity(
    @PrimaryKey val id: String,
    val name: String,
    val note: String = "",
    val startMs: Long,
    val endMs: Long? = null,
    val status: String = RecordingStatus.ACTIVE,
    val sourceStatusesJson: String = "{}",
)

@Entity(
    tableName = "sensor_samples",
    foreignKeys = [ForeignKey(
        entity = RecordingEntity::class,
        parentColumns = ["id"],
        childColumns = ["recordingId"],
        onDelete = ForeignKey.CASCADE,
    )],
    indices = [Index("recordingId", "sensorType", "timestampEpochMs")],
)
data class SensorSampleEntity(
    @PrimaryKey(autoGenerate = true) val id: Long = 0,
    val recordingId: String,
    val sensorType: Int,
    val timestampEpochMs: Long,
    val originalEventTimestampNs: Long,
    val valueX: Double,
    val valueY: Double? = null,
    val valueZ: Double? = null,
    val edited: Boolean = false,
)

@Entity(
    tableName = "location_samples",
    foreignKeys = [ForeignKey(
        entity = RecordingEntity::class,
        parentColumns = ["id"],
        childColumns = ["recordingId"],
        onDelete = ForeignKey.CASCADE,
    )],
    indices = [Index("recordingId", "timestampEpochMs")],
)
data class LocationSampleEntity(
    @PrimaryKey(autoGenerate = true) val id: Long = 0,
    val recordingId: String,
    val timestampEpochMs: Long,
    val originalLocationTimeMs: Long,
    val latitude: Double,
    val longitude: Double,
    val accuracyMeters: Double,
    val altitudeMeters: Double? = null,
    val altitudeSource: String? = null,
    val altitudeTimestampEpochMs: Long? = null,
    val altitudeMslMeters: Double? = null,
    val geoidSeparationMeters: Double? = null,
    val edited: Boolean = false,
)

data class RecordingSummary(
    val id: String,
    val name: String,
    val note: String,
    val startMs: Long,
    val endMs: Long?,
    val status: String,
    val sourceStatusesJson: String,
    val sampleCount: Long,
)
