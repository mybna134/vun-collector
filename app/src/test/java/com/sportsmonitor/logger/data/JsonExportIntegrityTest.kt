package com.sportsmonitor.logger.data

import java.io.ByteArrayInputStream
import java.io.ByteArrayOutputStream
import java.io.File
import java.io.IOException
import java.io.OutputStream
import java.security.MessageDigest
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.Job
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class JsonExportIntegrityTest {
    @Test fun checksumPreservesExactUtf8BytesIncludingChineseAndLargePayload() = runBlocking {
        for (payload in listOf("{\n  \"gpsSamples\": []\n}",
            "{\n  \"name\": \"测试记录\",\n  \"points\": [" +
                (0..1500).joinToString(",") { "{\"value\":$it}" } + "]\n}")) {
            val base = File.createTempFile("base", ".json")
            val output = File.createTempFile("export", ".json")
            try {
                base.writeText(payload, Charsets.UTF_8)
                JsonExportIntegrity.appendChecksum(base, output)
                val digest = MessageDigest.getInstance("SHA-256").digest(base.readBytes())
                    .joinToString("") { "%02x".format(it.toInt() and 255) }
                val expected = payload.dropLast(2) + ",\n  \"sha256\": \"$digest\"\n}"
                assertEquals(expected, output.readText())
                assertArrayEquals(base.readBytes(), (output.readText().substringBeforeLast(",\n  \"sha256\": ") + "\n}").toByteArray())
            } finally { base.delete(); output.delete() }
        }
    }

    @Test fun truncatedBaseCannotProduceChecksum() = runBlocking {
        val base = File.createTempFile("base", ".json")
        val output = File.createTempFile("export", ".json")
        try {
            base.writeText("{\n  \"originalEventTime")
            assertTrue(runCatching { JsonExportIntegrity.appendChecksum(base, output) }.isFailure)
            assertEquals(0L, output.length())
        } finally { base.delete(); output.delete() }
    }

    @Test fun outputFailurePropagates() = runBlocking {
        val failure = runCatching {
            JsonExportIntegrity.copy(ByteArrayInputStream(ByteArray(20_000)), object : OutputStream() {
                override fun write(value: Int) { throw IOException("disk full") }
            })
        }.exceptionOrNull()
        assertTrue(failure is IOException)
    }

    @Test fun cancellationStopsCopyBetweenBuffers() {
        val job = Job()
        val bytes = ByteArrayOutputStream()
        val output = object : OutputStream() {
            override fun write(value: Int) { bytes.write(value) }
            override fun write(buffer: ByteArray, offset: Int, length: Int) {
                bytes.write(buffer, offset, length)
                job.cancel()
            }
        }
        val failure = runCatching {
            runBlocking(job) {
                JsonExportIntegrity.copy(ByteArrayInputStream(ByteArray(20_000)), output)
            }
        }.exceptionOrNull()
        assertTrue(failure is CancellationException)
        assertEquals(DEFAULT_BUFFER_SIZE, bytes.size())
    }
}
