package com.sportsmonitor.logger.data

import android.content.ContentResolver
import android.net.Uri
import android.util.JsonWriter
import androidx.room.withTransaction
import java.io.File
import java.io.IOException
import android.provider.DocumentsContract
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.NonCancellable
import kotlinx.coroutines.currentCoroutineContext
import kotlinx.coroutines.ensureActive
import kotlinx.coroutines.withContext
import java.io.OutputStreamWriter
import java.nio.charset.StandardCharsets
import org.json.JSONObject

class RecordingExporter(private val database: LoggerDatabase) {
    suspend fun export(resolver: ContentResolver, recordingId: String, uri: Uri, cacheDir: File) {
        var base: File? = null
        var complete: File? = null
        var targetOpened = false
        try {
            base = File.createTempFile("recording-base-", ".json", cacheDir)
            complete = File.createTempFile("recording-export-", ".json", cacheDir)
            writeBase(recordingId, base)
            JsonExportIntegrity.appendChecksum(base, complete)
            currentCoroutineContext().ensureActive()
            val output = requireNotNull(resolver.openOutputStream(uri, "wt")) { "无法打开目标文件" }
            targetOpened = true
            output.use { destination ->
                complete.inputStream().use { JsonExportIntegrity.copy(it, destination) }
            }
            currentCoroutineContext().ensureActive()
        } catch (error: Exception) {
            val removed = !targetOpened || withContext(NonCancellable + Dispatchers.IO) {
                try {
                    if (uri.scheme == "file") File(requireNotNull(uri.path)).delete()
                    else DocumentsContract.deleteDocument(resolver, uri)
                } catch (_: Exception) { false }
            }
            if (!removed) {
                val failure = IOException("导出失败，目标文件可能不完整，请删除后重新导出", error)
                if (error is CancellationException) error.addSuppressed(failure) else throw failure
            }
            throw error
        } finally {
            base?.delete()
            complete?.delete()
        }
    }

    private suspend fun writeBase(recordingId: String, file: File) {
        database.withTransaction {
            val dao = database.recordingDao()
            val recording = requireNotNull(dao.getRecording(recordingId)) { "记录不存在" }
            require(recording.status != RecordingStatus.ACTIVE) { "请先停止采集" }
            val counterCount = dao.sensorCount(recordingId, android.hardware.Sensor.TYPE_STEP_COUNTER)
            val counterSamples = ArrayList<SensorSampleEntity>(counterCount)
            var counterOffset = 0
            while (counterOffset < counterCount) {
                val page = dao.sensorPage(recordingId, android.hardware.Sensor.TYPE_STEP_COUNTER, 500, counterOffset)
                if (page.isEmpty()) break
                counterSamples += page
                counterOffset += page.size
            }
            val relativeSteps = SampleRules.relativeSteps(counterSamples)
            val stream = file.outputStream()
            stream.use { output ->
                JsonWriter(OutputStreamWriter(output, StandardCharsets.UTF_8)).use { writer ->
                    writer.setIndent("  ")
                    writer.beginObject()
                    writer.name("schemaVersion").value(2)
                    writer.name("recording").beginObject()
                    writer.name("id").value(recording.id)
                    writer.name("name").value(recording.name)
                    writer.name("note").value(recording.note)
                    writer.name("startEpochMs").value(recording.startMs)
                    writer.name("endEpochMs").value(recording.endMs)
                    writer.name("status").value(recording.status)
                    writer.endObject()
                    writer.name("sourceStatuses").beginObject()
                    val sourceStatuses = JSONObject(recording.sourceStatusesJson)
                    for (key in sourceStatuses.keys()) writer.name(key).value(sourceStatuses.getString(key))
                    writer.endObject()
                    writer.name("sensorSamples").beginObject()
                    for (type in SampleRules.sensorTypes) {
                        writer.name(type.toString()).beginArray()
                        var offset = 0
                        while (true) {
                            val page = dao.sensorPage(recordingId, type, 500, offset)
                            if (page.isEmpty()) break
                            for (sample in page) {
                                writer.beginObject()
                                writer.name("id").value(sample.id)
                                writer.name("type").value(sample.sensorType)
                                writer.name("timestampEpochMs").value(sample.timestampEpochMs)
                                writer.name("originalEventTimestampNs").value(sample.originalEventTimestampNs)
                                writer.name("x").value(sample.valueX)
                                if (sample.valueY != null) writer.name("y").value(sample.valueY)
                                if (sample.valueZ != null) writer.name("z").value(sample.valueZ)
                                if (type == android.hardware.Sensor.TYPE_STEP_COUNTER)
                                    writer.name("relativeSteps").value(relativeSteps[sample.id])
                                writer.name("unit").value(SampleRules.unit(type))
                                writer.name("edited").value(sample.edited)
                                writer.endObject()
                            }
                            offset += page.size
                        }
                        writer.endArray()
                    }
                    writer.endObject()
                    writer.name("gpsSamples").beginArray()
                    var offset = 0
                    while (true) {
                        val page = dao.locationPage(recordingId, 500, offset)
                        if (page.isEmpty()) break
                        for (sample in page) {
                            writer.beginObject()
                            writer.name("id").value(sample.id)
                            writer.name("type").value("gps")
                            writer.name("timestampEpochMs").value(sample.timestampEpochMs)
                            writer.name("originalLocationTimeMs").value(sample.originalLocationTimeMs)
                            writer.name("latitude").value(sample.latitude)
                            writer.name("longitude").value(sample.longitude)
                            writer.name("accuracyMeters").value(sample.accuracyMeters)
                            writer.name("altitudeMeters").value(sample.altitudeMeters)
                            writer.name("altitudeSource").value(sample.altitudeSource)
                            writer.name("altitudeTimestampEpochMs").value(sample.altitudeTimestampEpochMs)
                            writer.name("altitudeMslMeters").value(sample.altitudeMslMeters)
                            writer.name("geoidSeparationMeters").value(sample.geoidSeparationMeters)
                            writer.name("unit").value("degrees, meters")
                            writer.name("edited").value(sample.edited)
                            writer.endObject()
                        }
                        offset += page.size
                    }
                    writer.endArray()
                    writer.endObject()
                }
            }
        }
    }
}
