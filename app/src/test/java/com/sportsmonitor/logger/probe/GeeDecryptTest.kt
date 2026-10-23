package com.sportsmonitor.logger.probe

import org.junit.Assert.*
import org.junit.Test
import java.util.Base64
import javax.crypto.Cipher
import javax.crypto.spec.IvParameterSpec
import javax.crypto.spec.SecretKeySpec

class GeeDecryptTest {
    @Test fun decryptsOriginalEnvelopeAndPreservesQuotedPunctuation() {
        val json = """{"text":"设备 { [, ] } : , \"quoted\"","nested":[1,{"ok":true}]}"""
        val token = tokenFor(json)
        assertTrue(token.startsWith("R0VFAA"))
        assertEquals(json, GeeDecrypt.decrypt(token))
        val pretty = GeeDecrypt.pretty(json)
        assertTrue(pretty.contains("设备 { [, ] } : ,"))
        assertEquals(json, removeUnquotedWhitespace(pretty))
        assertEquals(json, GeeDecrypt.decrypt(token.chunked(64).joinToString("\n")))
    }

    @Test fun rejectsEnvelopeLengthBlockAndPaddingErrors() {
        val valid = Base64.getDecoder().decode(tokenFor("{}"))
        for (bad in listOf(
            valid.copyOf(24),
            valid.copyOf().also { it[0] = 0 },
            valid.copyOf().also { it[21] = 127 },
            valid.copyOf(valid.size - 1),
            valid.copyOf().also { it[24] = 15 },
            Base64.getDecoder().decode(tokenFor("", byteArrayOf(0))),
            Base64.getDecoder().decode(tokenFor("", ByteArray(16) { 32 })),
        )) {
            assertThrows(IllegalArgumentException::class.java) { GeeDecrypt.decrypt(Base64.getEncoder().encodeToString(bad)) }
        }
        assertThrows(IllegalArgumentException::class.java) { GeeDecrypt.decrypt("!").also { fail() } }
    }

    companion object {
        fun tokenFor(json: String, overridePlain: ByteArray? = null): String {
            val body = json.toByteArray(Charsets.UTF_8)
            val padding = 16 - body.size % 16
            val padded = overridePlain?.let { it.copyOf(16) } ?: (body + ByteArray(padding) { padding.toByte() })
            val iv = "0123456789abcdef".toByteArray()
            val cipher = Cipher.getInstance("AES/CBC/NoPadding")
            cipher.init(Cipher.ENCRYPT_MODE, SecretKeySpec("WS1nbWQfMJ1merhqY5RsFZIxrJ/54JE=".toByteArray(), "AES"), IvParameterSpec(iv))
            val ct = cipher.doFinal(padded)
            val len = byteArrayOf((ct.size ushr 24).toByte(), (ct.size ushr 16).toByte(), (ct.size ushr 8).toByte(), ct.size.toByte())
            return Base64.getEncoder().encodeToString(byteArrayOf(71, 69, 69, 0, 5) + iv + len + ct)
        }

        private fun removeUnquotedWhitespace(input: String): String {
            var quoted = false
            var escaped = false
            return buildString {
                for (ch in input) {
                    if (quoted || !ch.isWhitespace()) append(ch)
                    if (escaped) escaped = false
                    else if (quoted && ch == '\\') escaped = true
                    else if (ch == '"') quoted = !quoted
                }
            }
        }
    }
}
