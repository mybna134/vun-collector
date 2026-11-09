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
    internal fun parseManifest(jsonText: String, installedVersionCode: Int): UpdateManifest? {
        return runCatching {
            val json = JSONObject(jsonText)
            val versionCode = json.optInt("versionCode", -1)
            val apkUrl = json.optString("apkUrl")
            if (versionCode <= installedVersionCode || versionCode <= 0 || !apkUrl.startsWith("https://")) return null
            UpdateManifest(versionCode, json.optString("commitComment"), apkUrl)
        }.getOrNull()
    }

    fun check(manifestUrl: String, installedVersionCode: Int): UpdateManifest? {
        if (manifestUrl.isBlank()) return null
        val connection = URL(manifestUrl).openConnection() as HttpURLConnection
        try {
            connection.connectTimeout = 8_000
            connection.readTimeout = 8_000
            connection.requestMethod = "GET"
            if (connection.responseCode !in 200..299) return null
            return parseManifest(connection.inputStream.bufferedReader().use { it.readText() }, installedVersionCode)
        } finally {
            connection.disconnect()
        }
    }

    fun download(context: Context, apkUrl: String): File {
        require(apkUrl.startsWith("https://")) { "更新地址无效" }
        val connection = URL(apkUrl).openConnection() as HttpURLConnection
        try {
            connection.connectTimeout = 15_000
            connection.readTimeout = 60_000
            connection.requestMethod = "GET"
            check(connection.responseCode in 200..299) { "下载更新失败（HTTP ${connection.responseCode}）" }
            val target = File(context.cacheDir, "app-release.apk")
            connection.inputStream.use { input -> target.outputStream().use { output -> input.copyTo(output) } }
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
