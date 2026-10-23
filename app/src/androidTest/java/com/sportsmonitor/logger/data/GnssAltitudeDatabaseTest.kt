package com.sportsmonitor.logger.data

import android.content.Context
import android.database.sqlite.SQLiteDatabase
import android.net.Uri
import androidx.room.Room
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import com.sportsmonitor.logger.recording.NativeAltitude
import java.io.File
import kotlinx.coroutines.runBlocking
import org.json.JSONObject
import org.junit.Assert.*
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class GnssAltitudeDatabaseTest {
    private val context: Context = ApplicationProvider.getApplicationContext()

    @Test fun jniPreservesZeroNegativeAndRejectsNonFinite() {
        assertEquals(0.0, NativeAltitude.accept(0.0), 0.0)
        assertEquals(-12.5, NativeAltitude.accept(-12.5), 0.0)
        assertTrue(NativeAltitude.accept(Double.NaN).isNaN())
        assertTrue(NativeAltitude.accept(Double.POSITIVE_INFINITY).isNaN())
    }

    @Test fun oldDatabaseMigratesWithoutLosingRecordOrInventingAltitude() = runBlocking {
        val name = "altitude-migration-${System.nanoTime()}.db"
        val file = context.getDatabasePath(name)
        file.parentFile!!.mkdirs()
        SQLiteDatabase.openOrCreateDatabase(file, null).use { old ->
            old.execSQL("CREATE TABLE recordings (id TEXT NOT NULL PRIMARY KEY, name TEXT NOT NULL, note TEXT NOT NULL, startMs INTEGER NOT NULL, endMs INTEGER, status TEXT NOT NULL, sourceStatusesJson TEXT NOT NULL)")
            old.execSQL("CREATE TABLE sensor_samples (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, recordingId TEXT NOT NULL, sensorType INTEGER NOT NULL, timestampEpochMs INTEGER NOT NULL, originalEventTimestampNs INTEGER NOT NULL, valueX REAL NOT NULL, valueY REAL, valueZ REAL, edited INTEGER NOT NULL, FOREIGN KEY(recordingId) REFERENCES recordings(id) ON UPDATE NO ACTION ON DELETE CASCADE)")
            old.execSQL("CREATE INDEX index_sensor_samples_recordingId_sensorType_timestampEpochMs ON sensor_samples(recordingId, sensorType, timestampEpochMs)")
            old.execSQL("CREATE TABLE location_samples (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, recordingId TEXT NOT NULL, timestampEpochMs INTEGER NOT NULL, originalLocationTimeMs INTEGER NOT NULL, latitude REAL NOT NULL, longitude REAL NOT NULL, accuracyMeters REAL NOT NULL, edited INTEGER NOT NULL, FOREIGN KEY(recordingId) REFERENCES recordings(id) ON UPDATE NO ACTION ON DELETE CASCADE)")
            old.execSQL("CREATE INDEX index_location_samples_recordingId_timestampEpochMs ON location_samples(recordingId, timestampEpochMs)")
            old.execSQL("INSERT INTO recordings VALUES ('old', '原有记录', '', 1000, 2000, 'stopped', '{}')")
            old.execSQL("INSERT INTO location_samples VALUES (1, 'old', 1500, 1500, 37, 114, 2, 0)")
            old.version = 1
        }
        val database = Room.databaseBuilder(context, LoggerDatabase::class.java, name)
            .addMigrations(LoggerDatabase.MIGRATION_1_2).build()
        try {
            assertEquals("原有记录", database.recordingDao().getRecording("old")!!.name)
            val point = database.recordingDao().locationPage("old", 10, 0).single()
            assertEquals(37.0, point.latitude, 0.0)
            assertNull(point.altitudeMeters)
            assertNull(point.altitudeSource)
        } finally { database.close(); context.deleteDatabase(name) }
    }

    @Test fun exportRoundTripsAltitudeAndExplicitNulls() = runBlocking {
        val database = Room.inMemoryDatabaseBuilder(context, LoggerDatabase::class.java).build()
        try {
            val dao = database.recordingDao()
            dao.insertRecording(RecordingEntity(id = "altitude", name = "海拔集成记录", startMs = 1000,
                endMs = 5000, status = RecordingStatus.STOPPED))
            dao.insertLocationSamples(listOf(
                LocationSampleEntity(recordingId = "altitude", timestampEpochMs = 1000, originalLocationTimeMs = 1000,
                    latitude = 37.0, longitude = 114.0, accuracyMeters = 2.0,
                    altitudeMeters = 80.0, altitudeSource = "nmea_gga", altitudeTimestampEpochMs = 1000,
                    altitudeMslMeters = 100.0, geoidSeparationMeters = -20.0),
                LocationSampleEntity(recordingId = "altitude", timestampEpochMs = 3000, originalLocationTimeMs = 3000,
                    latitude = 37.0001, longitude = 114.0001, accuracyMeters = 2.0),
                LocationSampleEntity(recordingId = "altitude", timestampEpochMs = 5000, originalLocationTimeMs = 5000,
                    latitude = 37.0002, longitude = 114.0002, accuracyMeters = 3.0,
                    altitudeMeters = NativeAltitude.accept(-3.0), altitudeSource = "gps_jni", altitudeTimestampEpochMs = 5000),
            ))
            val file = File(context.filesDir, "altitude-v2-integration.json")
            RecordingExporter(database).export(context.contentResolver, "altitude", Uri.fromFile(file), context.cacheDir)
            val root = JSONObject(file.readText())
            assertEquals(2, root.getInt("schemaVersion"))
            val points = root.getJSONArray("gpsSamples")
            assertEquals(80.0, points.getJSONObject(0).getDouble("altitudeMeters"), 0.0)
            assertEquals("nmea_gga", points.getJSONObject(0).getString("altitudeSource"))
            assertEquals(-3.0, points.getJSONObject(2).getDouble("altitudeMeters"), 0.0)
            for (key in listOf("altitudeMeters", "altitudeSource", "altitudeTimestampEpochMs", "altitudeMslMeters", "geoidSeparationMeters")) {
                assertTrue(points.getJSONObject(1).has(key))
                assertTrue(points.getJSONObject(1).isNull(key))
            }
        } finally { database.close() }
    }
}
