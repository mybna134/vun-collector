package com.sportsmonitor.logger.auth

import java.net.URL
import java.net.URLDecoder
import java.net.URLEncoder
import java.security.MessageDigest
import java.util.concurrent.atomic.AtomicLong
import javax.crypto.Mac
import javax.crypto.spec.SecretKeySpec

internal fun wireQuote(value: String): String = buildString {
    append('"')
    value.forEachIndexed { index, ch ->
        when (ch) {
            '"' -> append("\\\"")
            '\\' -> append("\\\\")
            '\b' -> append("\\b")
            '\u000c' -> append("\\f")
            '\n' -> append("\\n")
            '\r' -> append("\\r")
            '\t' -> append("\\t")
            else -> {
                val unpaired = (ch.isHighSurrogate() && value.getOrNull(index + 1)?.isLowSurrogate() != true) ||
                    (ch.isLowSurrogate() && value.getOrNull(index - 1)?.isHighSurrogate() != true)
                if (ch.code < 32 || unpaired) append("\\u").append(ch.code.toString(16).padStart(4, '0'))
                else append(ch)
            }
        }
    }
    append('"')
}

internal fun ByteArray.hex(): String = joinToString("") { (it.toInt() and 255).toString(16).padStart(2, '0') }
internal fun sha256(bytes: ByteArray): String = MessageDigest.getInstance("SHA-256").digest(bytes).hex()

data class SignedHeaders(val tick: String, val sign: String)

class ApiSigner(private val key: String, private val now: () -> Long = System::currentTimeMillis) {
    companion object { private val previousTick = AtomicLong() }

    fun hmac(value: String): String {
        require(key.length >= 32) { "此安装包未配置 API 签名密钥，请重新构建" }
        return Mac.getInstance("HmacSHA256").run {
            init(SecretKeySpec(key.toByteArray(Charsets.UTF_8), "HmacSHA256"))
            doFinal(value.toByteArray(Charsets.UTF_8)).hex()
        }
    }

    fun headers(method: String, url: URL, bodyHash: String, authorization: String = ""): SignedHeaders {
        val tick = previousTick.updateAndGet { maxOf(now(), it + 1) }.toString()
        val query = url.query.orEmpty().split('&').filter(String::isNotEmpty).map {
            URLDecoder.decode(it.substringBefore('='), "UTF-8") to
                URLDecoder.decode(it.substringAfter('=', ""), "UTF-8")
        }.sortedBy { it.first }.joinToString("&") {
            "${URLEncoder.encode(it.first, "UTF-8")}=${URLEncoder.encode(it.second, "UTF-8")}"
        }
        val path = url.toURI().rawPath.ifEmpty { "/" }
        val payload = "${method.uppercase(java.util.Locale.ROOT)}\n$path\n$query\n$bodyHash\n${sha256(authorization.toByteArray(Charsets.UTF_8))}\n"
        return SignedHeaders(tick, hmac(payload + tick))
    }

    fun verifyLogin(payload: String, timestamp: Long, signature: String) {
        require(timestamp in (now() - 300_000)..(now() + 300_000)) { "登录响应已过期，请检查设备时间" }
        require(signature.matches(Regex("[a-f0-9]{64}")) && MessageDigest.isEqual(
            hmac(payload + timestamp).toByteArray(Charsets.US_ASCII), signature.toByteArray(Charsets.US_ASCII),
        )) { "登录响应签名无效" }
    }
}
