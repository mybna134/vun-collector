package com.sportsmonitor.logger.auth

import java.net.ServerSocket
import java.net.URL
import java.util.concurrent.CopyOnWriteArrayList
import javax.crypto.Mac
import javax.crypto.spec.SecretKeySpec
import org.json.JSONObject

internal const val TEST_KEY = "0123456789abcdef0123456789abcdef"
internal val REFRESH = "b".repeat(64)
internal val NEW_REFRESH = "c".repeat(64)
internal val ACCESS = "a".repeat(64)
internal val TOKENS = """{"access_token":"$ACCESS","refresh-token":"$NEW_REFRESH","token_type":"Bearer","expires_in":900}"""

internal fun referenceHmac(value: String): String = Mac.getInstance("HmacSHA256").run {
    init(SecretKeySpec(TEST_KEY.toByteArray(), "HmacSHA256"))
    doFinal(value.toByteArray(Charsets.UTF_8)).joinToString("") { "%02x".format(it.toInt() and 255) }
}

internal fun loginReply(username: String = "alice", time: Long = System.currentTimeMillis(), valid: Boolean = true): String {
    // Deliberately use a different field order on the wire from the signed canonical payload.
    val quotedName = if (username == "测试</用户>") "\"测试</用户>\"" else "\"alice\""
    val payload = "{\"refresh-token\":\"$REFRESH\",\"uid\":1,\"username\":$quotedName}"
    return JSONObject().put("username", username).put("uid", 1).put("t", time).put("refresh-token", REFRESH)
        .put("sign", if (valid) referenceHmac(payload + time) else "0".repeat(64)).toString()
}

internal data class TestRequest(val method: String, val path: String, val headers: Map<String, String>, val body: String)

internal class AuthTestServer(private val handler: (TestRequest) -> Pair<Int, String>) : AutoCloseable {
    private val server = ServerSocket(0, 8, java.net.InetAddress.getByName("127.0.0.1"))
    val url = URL("http://127.0.0.1:${server.localPort}/")
    val requests = CopyOnWriteArrayList<TestRequest>()
    private val failures = CopyOnWriteArrayList<Throwable>()
    private val worker = Thread {
        while (!server.isClosed) {
            try {
                server.accept().use { socket ->
                    socket.soTimeout = 5_000
                    val input = socket.getInputStream().buffered()
                    fun line() = buildString {
                        while (true) {
                            val byte = input.read()
                            if (byte == -1 || byte == 10) break
                            if (byte != 13) append(byte.toChar())
                        }
                    }
                    val first = line().split(' ')
                    val headers = mutableMapOf<String, String>()
                    while (true) {
                        val header = line()
                        if (header.isEmpty()) break
                        headers[header.substringBefore(':').lowercase()] = header.substringAfter(':').trim()
                    }
                    val body = String(input.readNBytes(headers["content-length"]?.toInt() ?: 0), Charsets.UTF_8)
                    val request = TestRequest(first[0], first[1], headers, body)
                    requests.add(request)
                    val (status, text) = handler(request)
                    val bytes = text.toByteArray(Charsets.UTF_8)
                    socket.getOutputStream().apply {
                        write("HTTP/1.1 $status Response\r\nContent-Type: application/json\r\nContent-Length: ${bytes.size}\r\nConnection: close\r\n\r\n".toByteArray())
                        write(bytes)
                        flush()
                    }
                }
            } catch (error: Throwable) { if (!server.isClosed) failures.add(error) }
        }
    }.apply { isDaemon = true; start() }

    override fun close() {
        server.close()
        worker.join(1_000)
        failures.firstOrNull()?.let { throw AssertionError("Test server failed", it) }
    }
}
