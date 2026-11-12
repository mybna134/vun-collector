package com.sportsmonitor.logger.auth

import java.net.HttpURLConnection
import java.net.URL
import org.json.JSONObject

class ApiException(val status: Int, val code: String, message: String) : IllegalStateException(message)

internal fun apiFailure(status: Int, text: String): ApiException {
    val error = runCatching { JSONObject(text).optJSONObject("error") }.getOrNull()
    return ApiException(status, error?.optString("code").orEmpty(),
        "${error?.optString("message")?.takeIf(String::isNotBlank) ?: "请求失败"}（HTTP $status）")
}

internal fun numericUid(value: Any): Long {
    require(value is Number) { "uid 必须是数字" }
    return value.toString().toBigDecimal().longValueExact().also {
        require(it in 1L..9_007_199_254_740_991L) { "uid 无效" }
    }
}

internal fun token(value: String): String = value.also {
    require(it.matches(Regex("[a-f0-9]{64}"))) { "服务端返回的 Token 无效" }
}

data class LoginIdentity(val uid: Long, val username: String, val refreshToken: String)
data class TokenPair(val accessToken: String, val refreshToken: String, val expiresIn: Long)

class AuthApi(val signer: ApiSigner, private val baseUrl: URL = URL("https://api.myb666.ccwu.cc/")) {
    companion object {
        fun normalizeUsername(value: String): String = value.trim().also {
            require(it.length in 1..128) { "用户名须为 1–128 个字符" }
        }
    }

    fun login(username: String): LoginIdentity {
        val name = normalizeUsername(username)
        val response = post("/login", "{\"username\":${wireQuote(name)}}")
        val uid = numericUid(response.get("uid"))
        val returnedName = response.getString("username")
        require(returnedName == name) { "登录返回的用户名不匹配" }
        val refresh = token(response.getString("refresh-token"))
        val rawTime = response.get("t")
        require(rawTime is Number)
        val time = rawTime.toString().toBigDecimal().longValueExact()
        val payload = "{\"refresh-token\":${wireQuote(refresh)},\"uid\":$uid,\"username\":${wireQuote(returnedName)}}"
        signer.verifyLogin(payload, time, response.getString("sign"))
        return LoginIdentity(uid, returnedName, refresh)
    }

    fun refresh(refreshToken: String): TokenPair {
        val response = post("/tokens/refresh", "{\"refresh-token\":${wireQuote(token(refreshToken))}}")
        require(response.getString("token_type") == "Bearer") { "Token 类型无效，请重新登录" }
        val expires = response.getLong("expires_in")
        require(expires in 1..900) { "Token 有效期无效，请重新登录" }
        return TokenPair(token(response.getString("access_token")), token(response.getString("refresh-token")), expires)
    }

    private fun post(path: String, body: String): JSONObject {
        val url = URL(baseUrl, path)
        val bytes = body.toByteArray(Charsets.UTF_8)
        val headers = signer.headers("POST", url, sha256(bytes))
        val connection = url.openConnection() as HttpURLConnection
        try {
            connection.requestMethod = "POST"
            connection.instanceFollowRedirects = false
            connection.connectTimeout = 15_000
            connection.readTimeout = 30_000
            connection.doOutput = true
            connection.useCaches = false
            connection.setRequestProperty("Content-Type", "application/json; charset=utf-8")
            connection.setRequestProperty("tick", headers.tick)
            connection.setRequestProperty("sign", headers.sign)
            connection.outputStream.use { it.write(bytes) }
            val status = connection.responseCode
            val stream = if (status == 200) connection.inputStream else connection.errorStream
            val text = stream?.bufferedReader(Charsets.UTF_8)?.use { it.readText() }.orEmpty()
            if (status != 200) throw apiFailure(status, text)
            return try { JSONObject(text) } catch (error: Exception) {
                throw IllegalStateException("登录服务响应无法解析，请重新登录", error)
            }
        } finally { connection.disconnect() }
    }
}
