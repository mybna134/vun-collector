package com.sportsmonitor.logger.data

import android.content.Context
import android.hardware.Sensor
import android.net.Uri
import androidx.room.Room
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import java.io.File
import kotlinx.coroutines.runBlocking
import org.json.JSONObject
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class RecordingDatabaseTest {
    private lateinit var context: Context
    private lateinit var database: LoggerDatabase

    @Before fun setup() {
        context = ApplicationProvider.getApplicationContext()
        database = Room.inMemoryDatabaseBuilder(context, LoggerDatabase::class.java).build()
    }

    @After fun tearDown() { database.close() }

    @Test fun createsQueriesAndCascadeDeletes() = runBlocking {
        val dao = database.recordingDao()
        dao.insertRecording(RecordingEntity(id = "one", name = "测试", startMs = 1000, status = RecordingStatus.STOPPED))
        dao.insertSensorSamples(listOf(SensorSampleEntity(recordingId = "one", sensorType = Sensor.TYPE_ACCELEROMETER,
            timestampEpochMs = 1100, originalEventTimestampNs = 1, valueX = 1.0, valueY = 2.0, valueZ = 3.0)))
        dao.insertLocationSamples(listOf(LocationSampleEntity(recordingId = "one", timestampEpochMs = 1200,
            originalLocationTimeMs = 1200, latitude = 31.0, longitude = 121.0, accuracyMeters = 2.0)))
        assertEquals(1, dao.sensorCount("one", Sensor.TYPE_ACCELEROMETER))
        assertEquals(1, dao.locationCount("one"))
        assertEquals(1, dao.sensorPage("one", Sensor.TYPE_ACCELEROMETER, 1, 0).size)
        assertEquals(1, dao.locationPage("one", 1, 0).size)
        assertEquals(1, dao.deleteStopped("one"))
        assertNull(dao.getRecording("one"))
        assertEquals(0, dao.sensorCount("one", null))
        assertEquals(0, dao.locationCount("one"))
    }

    @Test fun exportIncludesCurrentEditedValues() = runBlocking {
        val dao = database.recordingDao()
        dao.insertRecording(RecordingEntity(id = "two", name = "已编辑", note = "测试导出",
            startMs = 1000, endMs = 2000, status = RecordingStatus.STOPPED,
            sourceStatusesJson = "{\"gps\":\"正常\"}"))
        dao.insertSensorSamples(listOf(SensorSampleEntity(recordingId = "two", sensorType = Sensor.TYPE_STEP_COUNTER,
            timestampEpochMs = 1100, originalEventTimestampNs = 1, valueX = 100.0),
            SensorSampleEntity(recordingId = "two", sensorType = Sensor.TYPE_STEP_COUNTER,
                timestampEpochMs = 1200, originalEventTimestampNs = 2, valueX = 104.0, edited = true)))
        dao.insertLocationSamples(listOf(LocationSampleEntity(recordingId = "two", timestampEpochMs = 1500,
            originalLocationTimeMs = 1400, latitude = 31.2, longitude = 121.4, accuracyMeters = 2.0, edited = true)))
        val file = File(context.cacheDir, "test-export-${System.nanoTime()}.json")
        try {
            RecordingExporter(database).export(context.contentResolver, "two", Uri.fromFile(file), context.cacheDir)
            val text = file.readText()
            val root = JSONObject(text)
            val marker = text.lastIndexOf(",\n  \"sha256\": ")
            assertTrue(marker >= 0)
            val original = text.substring(0, marker) + "\n}"
            val expected = java.security.MessageDigest.getInstance("SHA-256")
                .digest(original.toByteArray(Charsets.UTF_8))
                .joinToString("") { "%02x".format(it.toInt() and 255) }
            assertEquals(expected, root.getString("sha256"))
            assertEquals(2, root.getInt("schemaVersion"))
            assertEquals("已编辑", root.getJSONObject("recording").getString("name"))
            val steps = root.getJSONObject("sensorSamples").getJSONArray(Sensor.TYPE_STEP_COUNTER.toString())
            assertEquals(2, steps.length())
            assertEquals(4.0, steps.getJSONObject(1).getDouble("relativeSteps"), 0.0)
            assertTrue(steps.getJSONObject(1).getBoolean("edited"))
            assertEquals(31.2, root.getJSONArray("gpsSamples").getJSONObject(0).getDouble("latitude"), 0.0)
            assertEquals(1, dao.locationCount("two"))
        } finally { file.delete() }
    }

    @Test fun exportIncludesEveryPageAndEmptySources() = runBlocking {
        val dao = database.recordingDao()
        dao.insertRecording(RecordingEntity(id = "pages", name = "分页", startMs = 1000,
            status = RecordingStatus.STOPPED))
        dao.insertSensorSamples((0..1000).map {
            SensorSampleEntity(recordingId = "pages", sensorType = Sensor.TYPE_GYROSCOPE,
                timestampEpochMs = 1100L + it, originalEventTimestampNs = it.toLong(),
                valueX = it.toDouble(), valueY = 0.0, valueZ = 0.0)
        })
        val file = File(context.cacheDir, "test-pages-${System.nanoTime()}.json")
        try {
            RecordingExporter(database).export(context.contentResolver, "pages", Uri.fromFile(file), context.cacheDir)
            val root = JSONObject(file.readText())
            assertEquals(1001, root.getJSONObject("sensorSamples").getJSONArray("4").length())
            assertEquals(0, root.getJSONObject("sensorSamples").getJSONArray("1").length())
            assertEquals(0, root.getJSONArray("gpsSamples").length())
            assertTrue(root.getString("sha256").matches(Regex("[0-9a-f]{64}")))
        } finally { file.delete() }
    }

    @Test fun emptyRecordHasChecksumAndAllArrays() = runBlocking {
        val dao = database.recordingDao()
        dao.insertRecording(RecordingEntity(id = "empty", name = "空记录", startMs = 1000,
            status = RecordingStatus.STOPPED))
        val file = File(context.cacheDir, "test-empty-${System.nanoTime()}.json")
        try {
            RecordingExporter(database).export(context.contentResolver, "empty", Uri.fromFile(file), context.cacheDir)
            val root = JSONObject(file.readText())
            for (type in SampleRules.sensorTypes) {
                assertEquals(0, root.getJSONObject("sensorSamples").getJSONArray(type.toString()).length())
            }
            assertEquals(0, root.getJSONArray("gpsSamples").length())
            assertTrue(root.getString("sha256").matches(Regex("[0-9a-f]{64}")))
        } finally { file.delete() }
    }

    @Test fun exportFailureLeavesLocalRecordUntouched() = runBlocking {
        val dao = database.recordingDao()
        dao.insertRecording(RecordingEntity(id = "three", name = "保留", startMs = 1000,
            endMs = 2000, status = RecordingStatus.STOPPED))
        val failure = runCatching {
            RecordingExporter(database).export(context.contentResolver, "three", Uri.parse("content://missing.provider/export.json"), context.cacheDir)
        }
        assertTrue(failure.isFailure)
        assertEquals("保留", dao.getRecording("three")?.name)
    }
}
