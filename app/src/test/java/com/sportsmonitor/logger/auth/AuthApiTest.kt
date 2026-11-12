package com.sportsmonitor.logger.auth

import java.net.URL
import org.json.JSONObject
import org.junit.Assert.*
import org.junit.Test

class AuthApiTest {
    @Test fun loginAndRefreshUseSignedExactBodiesAndValidateLoginResponse() {
        AuthTestServer { request ->
            val payload = "POST\n${request.path}\n\n${sha256(request.body.toByteArray(Charsets.UTF_8))}\n${sha256(byteArrayOf())}\n"
            assertEquals(referenceHmac(payload + request.headers.getValue("tick")), request.headers["sign"])
            assertEquals("POST", request.method)
            when (request.path) {
                "/login" -> {
                    assertEquals("测试</用户>", JSONObject(request.body).getString("username"))
                    200 to loginReply("测试</用户>")
                }
                else -> {
                    assertEquals("/tokens/refresh", request.path)
                    assertEquals(REFRESH, JSONObject(request.body).getString("refresh-token"))
                    200 to TOKENS
                }
            }
        }.use { server ->
            val api = AuthApi(ApiSigner(TEST_KEY), server.url)
            val identity = api.login("  测试</用户>  ")
            assertEquals(1L, identity.uid)
            val tokens = api.refresh(identity.refreshToken)
            assertEquals(ACCESS, tokens.accessToken)
            assertEquals(NEW_REFRESH, tokens.refreshToken)
            assertNotEquals(server.requests[0].headers["tick"], server.requests[1].headers["tick"])
        }
    }

    @Test fun tamperedAndExpiredLoginResponsesAreRejected() {
        for (response in listOf(loginReply(valid = false), loginReply(time = System.currentTimeMillis() - 600_000))) {
            AuthTestServer { 200 to response }.use { server ->
                assertThrows(IllegalArgumentException::class.java) { AuthApi(ApiSigner(TEST_KEY), server.url).login("alice") }
            }
        }
    }

    @Test fun signingMatchesKnownHmacAndCanonicalQueryRules() {
        val signer = ApiSigner(TEST_KEY)
        assertEquals("d1a142a522452bfa51de38f0b764904d96ac71cab78a5b13933ee98881e1334e", signer.hmac("protocol-test"))
        val headers = signer.headers("get", URL("https://api.example/a%2Fb?b=%E4%B8%AD%E6%96%87%20~*&a=first&a=second"), sha256(byteArrayOf()))
        val payload = "GET\n/a%2Fb\na=first&a=second&b=%E4%B8%AD%E6%96%87+%7E*\n${sha256(byteArrayOf())}\n${sha256(byteArrayOf())}\n"
        assertEquals(referenceHmac(payload + headers.tick), headers.sign)
    }

    @Test fun signingKeyIsUsedAsUtf8AndMissingKeyFailsBeforeNetwork() {
        assertThrows(IllegalArgumentException::class.java) { ApiSigner("").hmac("payload") }
        assertEquals("\"测试</用户>\"", wireQuote("测试</用户>"))
    }
}
