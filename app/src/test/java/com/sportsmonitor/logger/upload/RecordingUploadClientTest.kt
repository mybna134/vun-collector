package com.sportsmonitor.logger.upload

import java.io.File
import java.io.RandomAccessFile
import java.net.ServerSocket
import java.net.URL
import java.util.concurrent.FutureTask
import java.util.concurrent.TimeUnit
import com.sportsmonitor.logger.auth.ApiSigner
import com.sportsmonitor.logger.auth.AuthApi
import com.sportsmonitor.logger.auth.ApiException
import com.sportsmonitor.logger.auth.sha256
import org.json.JSONObject
import org.junit.Assert.*
import org.junit.Test

class RecordingUploadClientTest {
    private val success = """{"jsonUUID":"6aad9ace-6904-4bfd-a1d0-f8df297e5350","routeTemplateName":"北京路线","createdAt":"2026-11-10T08:00:00.000Z","sizeBytes":106,"downloadUrl":"/route-templates?json-uuid=6aad9ace-6904-4bfd-a1d0-f8df297e5350"}"""
    private val key = "0123456789abcdef0123456789abcdef"
    private val accessToken = "a".repeat(64)

    private data class Request(val line: String, val headers: Map<String, String>, val body: ByteArray)

    private fun withServer(status: Int, response: String, action: (URL) -> Unit): Request {
        val server = ServerSocket(0, 1, java.net.InetAddress.getByName("127.0.0.1"))
        val task = FutureTask {
            server.accept().use { socket ->
                socket.soTimeout = 5_000
                val input = socket.getInputStream().buffered()
                fun line(): String = buildString {
                    while (true) {
                        val byte = input.read()
                        if (byte == -1 || byte == '\n'.code) break
                        if (byte != '\r'.code) append(byte.toChar())
                    }
                }
                val requestLine = line()
                val headers = mutableMapOf<String, String>()
                while (true) {
                    val header = line()
                    if (header.isEmpty()) break
                    headers[header.substringBefore(':').lowercase()] = header.substringAfter(':').trim()
                }
                val body = input.readNBytes(headers.getValue("content-length").toInt())
                val bytes = response.toByteArray(Charsets.UTF_8)
                socket.getOutputStream().apply {
                    write("HTTP/1.1 $status Response\r\nContent-Type: application/json\r\nContent-Length: ${bytes.size}\r\nConnection: close\r\n\r\n".toByteArray())
                    write(bytes)
                    flush()
                }
                Request(requestLine, headers, body)
            }
        }
        val worker = Thread(task).apply { isDaemon = true; start() }
        try {
            action(URL("http://127.0.0.1:${server.localPort}/route-templates"))
            return task.get(5, TimeUnit.SECONDS)
        } finally {
            server.close()
            worker.join(1_000)
        }
    }

    private fun withJson(action: (File) -> Unit) {
        val file = File.createTempFile("upload-test-", ".json")
        try {
            file.writeText("""{"schemaVersion":2,"recording":{"name":"路线"},"gpsSamples":[{"bearingDeg":123.456789}],"sensorSamples":{},"sha256":"preserved"}""")
            action(file)
        } finally { file.delete() }
    }

    @Test fun putStreamsSignedExportWithBearerAndNoIdentityFields() = withJson { file ->
        val request = withServer(201, success) { endpoint ->
            val result = RecordingUploadClient(ApiSigner(key), endpoint).upload(file, accessToken, "北京路线")
            assertEquals("6aad9ace-6904-4bfd-a1d0-f8df297e5350", result.jsonUUID)
        }
        assertEquals("PUT /route-templates HTTP/1.1", request.line)
        assertEquals("application/json; charset=utf-8", request.headers["content-type"])
        assertEquals(request.body.size.toString(), request.headers["content-length"])
        val payload = JSONObject(request.body.toString(Charsets.UTF_8))
        assertEquals(2, payload.length())
        assertEquals("北京路线", payload.getString("routeTemplateName"))
        assertFalse(payload.has("fileName"))
        assertFalse(payload.has("username"))
        assertFalse(payload.has("uid"))
        assertEquals("Bearer $accessToken", request.headers["authorization"])
        val tick = request.headers.getValue("tick")
        val expectedPayload = "PUT\n/route-templates\n\n${sha256(request.body)}\n${sha256("Bearer $accessToken".toByteArray())}\n"
        assertEquals(ApiSigner(key).hmac(expectedPayload + tick), request.headers["sign"])
        val template = payload.getJSONObject("route-template-json")
        assertEquals(2, template.getInt("schemaVersion"))
        assertEquals("preserved", template.getString("sha256"))
        assertEquals(123.456789, template.getJSONArray("gpsSamples").getJSONObject(0).getDouble("bearingDeg"), 0.0)
    }

    @Test fun rateLimitErrorIsReportedWithoutRetry() = withJson { file ->
        withServer(429, """{"error":{"code":"rate_limit_exceeded","message":"最多每小时 60 次请求"}}""") { endpoint ->
            val failure = assertThrows(IllegalStateException::class.java) {
                RecordingUploadClient(ApiSigner(key), endpoint).upload(file, accessToken, "北京路线")
            }
            assertTrue(failure.message!!.contains("最多每小时 60 次请求"))
            assertTrue(failure.message!!.contains("429"))
        }
    }

    @Test fun expiredAccessTokenPreservesTheErrorCodeForRefresh() = withJson { file ->
        withServer(401, """{"error":{"code":"invalid_access_token","message":"access_token 已过期"}}""") { endpoint ->
            val failure = assertThrows(ApiException::class.java) {
                RecordingUploadClient(ApiSigner(key), endpoint).upload(file, accessToken, "北京路线")
            }
            assertEquals("invalid_access_token", failure.code)
            assertEquals(401, failure.status)
        }
    }

    @Test fun nonJsonServerErrorsAreReadable() = withJson { file ->
        withServer(500, "upstream failed") { endpoint ->
            val failure = assertThrows(IllegalStateException::class.java) {
                RecordingUploadClient(ApiSigner(key), endpoint).upload(file, accessToken, "北京路线")
            }
            assertTrue(failure.message!!.contains("HTTP 500"))
        }
    }

    @Test fun malformedSuccessDoesNotInviteBlindRetry() = withJson { file ->
        withServer(201, "{}") { endpoint ->
            val failure = assertThrows(IllegalStateException::class.java) {
                RecordingUploadClient(ApiSigner(key), endpoint).upload(file, accessToken, "北京路线")
            }
            assertTrue(failure.message!!.contains("已接收上传"))
        }
    }

    @Test fun wrapperBytesCountTowardSizeLimit() = withJson { file ->
        RandomAccessFile(file, "rw").use { it.setLength(RecordingUploadClient.MAX_REQUEST_BYTES) }
        val failure = assertThrows(IllegalArgumentException::class.java) {
            RecordingUploadClient(ApiSigner(key), URL("http://127.0.0.1:1/route-templates")).upload(file, accessToken, "北京路线")
        }
        assertTrue(failure.message!!.contains("100 MB"))
    }

    @Test fun quotedUnicodeTemplateNameIsEscapedAndIncludedInSignature() = withJson { file ->
        val name = "路线\"\\/😀"
        val request = withServer(201, success) { endpoint ->
            RecordingUploadClient(ApiSigner(key), endpoint).upload(file, accessToken, "  $name  ")
        }
        assertEquals(name, JSONObject(request.body.toString(Charsets.UTF_8)).getString("routeTemplateName"))
        assertEquals(request.body.size.toString(), request.headers["content-length"])
        val expected = "PUT\n/route-templates\n\n${sha256(request.body)}\n${sha256("Bearer $accessToken".toByteArray())}\n"
        assertEquals(ApiSigner(key).hmac(expected + request.headers.getValue("tick")), request.headers["sign"])
    }

    @Test fun templateNameRejectsBlankLongAndControlCharacters() {
        for (name in listOf("  ", "a".repeat(256), "a\nb", "a\u007fb", "a\u0000b")) {
            assertThrows(IllegalArgumentException::class.java) { RecordingUploadClient.normalizeTemplateName(name) }
        }
        assertEquals("北京/路线", RecordingUploadClient.normalizeTemplateName(" 北京/路线 "))
        assertEquals(255, RecordingUploadClient.normalizeTemplateName("a".repeat(255)).length)
    }

    @Test fun uploadLargerThanOldTenMiBLimitIsAllowed() = withJson { file ->
        file.bufferedWriter().use { writer ->
            writer.write("{\"padding\":\"")
            val chunk = "a".repeat(1024)
            repeat(11 * 1024) { writer.write(chunk) }
            writer.write("\"}")
        }
        val request = withServer(201, success) { endpoint ->
            RecordingUploadClient(ApiSigner(key), endpoint).upload(file, accessToken, "大模板")
        }
        assertTrue(request.body.size > 10 * 1024 * 1024)
        assertEquals(request.body.size.toString(), request.headers["content-length"])
    }

    @Test fun blankOrLongUsernameIsRejectedAndCaseIsPreserved() {
        assertEquals("Alice", AuthApi.normalizeUsername(" Alice "))
        for (invalid in listOf("  ", "a".repeat(129))) {
            assertThrows(IllegalArgumentException::class.java) { AuthApi.normalizeUsername(invalid) }
        }
    }
}
