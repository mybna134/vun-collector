package com.sportsmonitor.logger.data

import java.io.File
import java.io.InputStream
import java.io.OutputStream
import java.io.RandomAccessFile
import java.security.MessageDigest
import kotlinx.coroutines.currentCoroutineContext
import kotlinx.coroutines.ensureActive

/** SHA-256 covers the exact UTF-8 base JSON, including its final newline and brace. */
internal object JsonExportIntegrity {
    suspend fun appendChecksum(base: File, target: File) {
        require(base != target)
        val length = base.length()
        require(length >= 2)
        RandomAccessFile(base, "r").use {
            it.seek(length - 2)
            check(it.readByte().toInt() == 10 && it.readByte().toInt() == 125) {
                "导出 JSON 未完整结束"
            }
        }
        val digest = MessageDigest.getInstance("SHA-256")
        val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
        base.inputStream().use { input ->
            while (true) {
                currentCoroutineContext().ensureActive()
                val count = input.read(buffer)
                if (count < 0) break
                digest.update(buffer, 0, count)
            }
        }
        val sha256 = digest.digest().joinToString("") { "%02x".format(it.toInt() and 255) }
        target.outputStream().use { output ->
            base.inputStream().use { input -> copy(input, output, length - 2) }
            output.write(",\n  \"sha256\": \"$sha256\"\n}".toByteArray(Charsets.UTF_8))
        }
        currentCoroutineContext().ensureActive()
    }

    suspend fun copy(input: InputStream, output: OutputStream, limit: Long = Long.MAX_VALUE) {
        val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
        var remaining = limit
        while (remaining > 0) {
            currentCoroutineContext().ensureActive()
            val count = input.read(buffer, 0, minOf(buffer.size.toLong(), remaining).toInt())
            if (count < 0) {
                check(limit == Long.MAX_VALUE) { "导出缓存被截断" }
                break
            }
            output.write(buffer, 0, count)
            remaining -= count
        }
        currentCoroutineContext().ensureActive()
    }
}
