package com.sportsmonitor.logger.probe

import java.nio.charset.StandardCharsets
import java.util.Base64
import javax.crypto.Cipher
import javax.crypto.spec.IvParameterSpec
import javax.crypto.spec.SecretKeySpec

/** Original GGD envelope/key; checked lengths prevent allocation and padding overflows. */
object GeeDecrypt {
    private val key = "WS1nbWQfMJ1merhqY5RsFZIxrJ/54JE=".toByteArray(StandardCharsets.US_ASCII)

    fun decrypt(token: String): String {
        require(token.length >= 40) { "Token 太短" }
        val env = Base64.getDecoder().decode(token.filterNot(Char::isWhitespace))
        require(env.size >= 41 && env[0] == 71.toByte() && env[1] == 69.toByte() &&
            env[2] == 69.toByte() && env[3] == 0.toByte() && env[4] == 5.toByte()) { "GEE 00 05 信封错误" }
        var length = 0L
        for (i in 21..24) length = (length shl 8) or (env[i].toLong() and 255)
        require(length > 0 && length == (env.size - 25).toLong() && length % 16 == 0L) { "密文长度或块对齐错误" }
        val cipher = Cipher.getInstance("AES/CBC/NoPadding")
        cipher.init(Cipher.DECRYPT_MODE, SecretKeySpec(key, "AES"), IvParameterSpec(env.copyOfRange(5, 21)))
        val plain = cipher.doFinal(env, 25, length.toInt())
        val padding = plain.last().toInt() and 255
        require(padding in 1..32 && padding <= plain.size &&
            (plain.size - padding until plain.size).all { (plain[it].toInt() and 255) == padding }) { "填充错误" }
        return String(plain, 0, plain.size - padding, StandardCharsets.UTF_8)
    }

    /** Formats structural punctuation only, preserving quoted strings and escaped quotes. */
    fun pretty(json: String): String {
        val out = StringBuilder()
        var indent = 0
        var quoted = false
        var escaped = false
        fun newline() { out.append('\n').append("  ".repeat(indent)) }
        for (ch in json) {
            if (quoted) {
                out.append(ch)
                if (escaped) escaped = false
                else if (ch == '\\') escaped = true
                else if (ch == '"') quoted = false
            } else when (ch) {
                '"' -> { quoted = true; out.append(ch) }
                '{', '[' -> { out.append(ch); indent++; newline() }
                '}', ']' -> { indent = (indent - 1).coerceAtLeast(0); newline(); out.append(ch) }
                ',' -> { out.append(ch); newline() }
                ':' -> out.append(": ")
                else -> if (!ch.isWhitespace()) out.append(ch)
            }
        }
        return out.toString()
    }
}
