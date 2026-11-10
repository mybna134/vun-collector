package com.sportsmonitor.logger.update

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class OtaUpdatesTest {
    private val manifest = """{"versionCode":10203,"commitComment":"fix release","apkUrl":"https://download.example/app-release.apk"}"""

    @Test fun newerVersionProducesUpdate() {
        assertEquals(10203, OtaUpdates.parseManifest(manifest, 10202)?.versionCode)
    }

    @Test fun equalOrOlderVersionIsIgnored() {
        assertNull(OtaUpdates.parseManifest(manifest, 10203))
        assertNull(OtaUpdates.parseManifest(manifest, 10204))
    }

    @Test fun invalidManifestIsRejected() {
        assertNull(OtaUpdates.parseManifest("{}", 1))
        assertNull(OtaUpdates.parseManifest("not-json", 1))
        assertNull(OtaUpdates.parseManifest("""{"versionCode":2,"apkUrl":"http://example/app.apk"}""", 1))
    }
    private fun withResponse(status: Int, body: String, action: (String) -> Unit) {
        val server = java.net.ServerSocket(0, 0, java.net.InetAddress.getByName("127.0.0.1"))
        val worker = Thread {
            try {
                while (!server.isClosed) {
                    server.accept().use { socket ->
                        socket.soTimeout = 3_000
                        val reader = socket.getInputStream().bufferedReader()
                        while (!reader.readLine().isNullOrEmpty()) { /* consume request headers */ }
                        val bytes = body.toByteArray()
                        val headers = "HTTP/1.1 $status Response\r\nContent-Length: ${bytes.size}\r\nConnection: close\r\n\r\n"
                        socket.getOutputStream().apply {
                            write(headers.toByteArray())
                            write(bytes)
                            flush()
                        }
                    }
                }
            } catch (_: java.net.SocketException) {
                // Closing the server ends the accept loop.
            }
        }.apply { isDaemon = true; start() }
        try {
            action("http://127.0.0.1:${server.localPort}/update.json")
        } finally {
            server.close()
            worker.join(3_000)
        }
    }

    @Test fun successfulCheckDistinguishesNewAndCurrentVersion() {
        withResponse(200, manifest) { url ->
            assertEquals(10203, OtaUpdates.check(url, 10202)?.versionCode)
            assertNull(OtaUpdates.check(url, 10203))
        }
    }

    @Test fun invalidDomainResponseIsReportedAsFailure() {
        withResponse(401, "domain name is invalid") { url ->
            val failure = org.junit.Assert.assertThrows(IllegalStateException::class.java) {
                OtaUpdates.check(url, 6)
            }
            org.junit.Assert.assertTrue(failure.message.orEmpty().contains("HTTP 401"))
        }
    }

    @Test fun malformedResponseIsReportedAsFailure() {
        withResponse(200, "not-json") { url ->
            org.junit.Assert.assertThrows(IllegalStateException::class.java) { OtaUpdates.check(url, 6) }
        }
    }

    @Test fun missingUrlIsReportedAsFailure() {
        org.junit.Assert.assertThrows(IllegalArgumentException::class.java) { OtaUpdates.check("", 6) }
    }
}
