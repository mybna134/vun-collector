package com.sportsmonitor.logger.update

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Build
import androidx.core.content.FileProvider
import org.json.JSONObject
import java.io.File
import java.net.HttpURLConnection
import java.net.URL

data class UpdateManifest(
    val versionCode: Int,
    val commitComment: String,
    val apkUrl: String,
)

object OtaUpdates {
    private fun readManifest(jsonText: String): UpdateManifest {
        val json = JSONObject(jsonText)
        val versionCode = json.getInt("versionCode")
        val apkUrl = json.getString("apkUrl")
        require(versionCode > 0 && apkUrl.startsWith("https://")) { "更新清单内容无效" }
        return UpdateManifest(versionCode, json.optString("commitComment"), apkUrl)
    }

    internal fun parseManifest(jsonText: String, installedVersionCode: Int): UpdateManifest? =
        runCatching { readManifest(jsonText).takeIf { it.versionCode > installedVersionCode } }.getOrNull()

    fun check(manifestUrl: String, installedVersionCode: Int): UpdateManifest? {
        require(manifestUrl.isNotBlank()) { "未配置更新地址" }
        val connection = URL(manifestUrl).openConnection() as HttpURLConnection
        try {
            connection.connectTimeout = 8_000
            connection.readTimeout = 8_000
            connection.useCaches = false
            connection.setRequestProperty("Cache-Control", "no-cache")
            connection.requestMethod = "GET"
            check(connection.responseCode in 200..299) { "检查更新失败（HTTP ${connection.responseCode}）" }
            val manifest = try {
                readManifest(connection.inputStream.bufferedReader().use { it.readText() })
            } catch (error: org.json.JSONException) {
                throw IllegalStateException("更新清单格式无效", error)
            }
            return manifest.takeIf { it.versionCode > installedVersionCode }
        } finally {
            connection.disconnect()
        }
    }

    fun download(context: Context, apkUrl: String, onProgress: (Long, Long) -> Unit = { _, _ -> }): File {
        require(apkUrl.startsWith("https://")) { "更新地址无效" }
        val connection = URL(apkUrl).openConnection() as HttpURLConnection
        try {
            connection.connectTimeout = 15_000
            connection.readTimeout = 60_000
            connection.requestMethod = "GET"
            check(connection.responseCode in 200..299) { "下载更新失败（HTTP ${connection.responseCode}）" }
            val directory = File(context.cacheDir, "ota-updates")
            check(directory.isDirectory || directory.mkdirs()) { "无法创建更新下载目录" }
            val target = File(directory, "app-release.apk")
            val total = connection.contentLengthLong
            onProgress(0L, total)
            try {
                connection.inputStream.use { input ->
                    target.outputStream().use { output ->
                        val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
                        var downloaded = 0L
                        while (true) {
                            val count = input.read(buffer)
                            if (count < 0) break
                            output.write(buffer, 0, count)
                            downloaded += count
                            onProgress(downloaded, total)
                        }
                        check(total < 0L || downloaded == total) { "安装包下载不完整，请重试" }
                    }
                }
            } catch (error: Exception) {
                target.delete()
                throw error
            }
            check(target.length() > 0L) { "下载的安装包为空" }
            return target
        } finally {
            connection.disconnect()
        }
    }

    fun install(context: Context, apk: File) {
        val uri: Uri = FileProvider.getUriForFile(context, "${context.packageName}.ota_updates", apk)
        val intent = Intent(Intent.ACTION_VIEW).apply {
            setDataAndType(uri, "application/vnd.android.package-archive")
            addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION or Intent.FLAG_ACTIVITY_NEW_TASK)
        }
        context.startActivity(intent)
    }
}
