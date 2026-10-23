package com.sportsmonitor.logger.data

import androidx.room.Dao
import androidx.room.Insert
import androidx.room.Query
import androidx.room.Update
import kotlinx.coroutines.flow.Flow

@Dao
interface RecordingDao {
    @Insert suspend fun insertRecording(recording: RecordingEntity)
    @Update suspend fun updateRecording(recording: RecordingEntity)
    @Query("SELECT * FROM recordings WHERE id = :id") suspend fun getRecording(id: String): RecordingEntity?
    @Query("SELECT * FROM recordings WHERE id = :id") fun observeRecording(id: String): Flow<RecordingEntity?>
    @Query("SELECT id FROM recordings WHERE status = 'active' LIMIT 1") suspend fun activeId(): String?
    @Query("UPDATE recordings SET status = 'interrupted', endMs = :nowMs WHERE status = 'active'")
    suspend fun interruptActive(nowMs: Long)
    @Query("UPDATE recordings SET status = 'stopped', endMs = :endMs WHERE id = :id AND status = 'active'")
    suspend fun stopRecording(id: String, endMs: Long)
    @Query("UPDATE recordings SET sourceStatusesJson = :statuses WHERE id = :id")
    suspend fun updateSourceStatuses(id: String, statuses: String)
    @Query("DELETE FROM recordings WHERE id = :id AND status != 'active'")
    suspend fun deleteStopped(id: String): Int

    @Query("""
        SELECT r.id, r.name, r.note, r.startMs, r.endMs, r.status, r.sourceStatusesJson,
          ((SELECT COUNT(*) FROM sensor_samples s WHERE s.recordingId = r.id) +
           (SELECT COUNT(*) FROM location_samples l WHERE l.recordingId = r.id)) AS sampleCount
        FROM recordings r ORDER BY r.startMs DESC
    """)
    fun observeSummaries(): Flow<List<RecordingSummary>>

    @Insert suspend fun insertSensorSamples(samples: List<SensorSampleEntity>)
    @Insert suspend fun insertLocationSamples(samples: List<LocationSampleEntity>)
    @Update suspend fun updateSensorSample(sample: SensorSampleEntity)
    @Update suspend fun updateLocationSample(sample: LocationSampleEntity)
    @Query("SELECT * FROM sensor_samples WHERE id = :id") suspend fun getSensorSample(id: Long): SensorSampleEntity?
    @Query("SELECT * FROM location_samples WHERE id = :id") suspend fun getLocationSample(id: Long): LocationSampleEntity?
    @Query("""
        SELECT * FROM sensor_samples WHERE recordingId = :recordingId
        AND (:sensorType IS NULL OR sensorType = :sensorType)
        ORDER BY timestampEpochMs, id LIMIT :limit OFFSET :offset
    """)
    suspend fun sensorPage(recordingId: String, sensorType: Int?, limit: Int, offset: Int): List<SensorSampleEntity>
    @Query("""
        SELECT * FROM location_samples WHERE recordingId = :recordingId
        ORDER BY timestampEpochMs, id LIMIT :limit OFFSET :offset
    """)
    suspend fun locationPage(recordingId: String, limit: Int, offset: Int): List<LocationSampleEntity>
    @Query("SELECT COUNT(*) FROM sensor_samples WHERE recordingId = :recordingId AND (:sensorType IS NULL OR sensorType = :sensorType)")
    suspend fun sensorCount(recordingId: String, sensorType: Int?): Int
    @Query("SELECT COUNT(*) FROM location_samples WHERE recordingId = :recordingId")
    suspend fun locationCount(recordingId: String): Int
}
