package com.sportsmonitor.logger.probe

import org.json.JSONArray
import org.json.JSONObject

object ProbeJson {
    fun decrypt(token: String): String = sanitizeGeePlain(GeeDecrypt.decrypt(token))

    fun requireValidLocation(json: String) {
        val root = JSONObject(json)
        val loc = root.optJSONObject("data")?.optJSONObject("dev")?.optJSONObject("loc")
            ?: throw IllegalStateException("SDK 未返回定位数据")
        if (loc.optInt("st", 0) != 1) throw IllegalStateException("SDK 定位未就绪")
        val point = loc.optJSONObject("loc") ?: throw IllegalStateException("SDK 未返回有效坐标")
        val lat = point.optString("lat", "").toDoubleOrNull()
        val lon = point.optString("lon", "").toDoubleOrNull()
        if (lat == null || lon == null || !lat.isFinite() || !lon.isFinite() || lat !in -90.0..90.0 || lon !in -180.0..180.0) {
            throw IllegalStateException("SDK 返回的坐标无效")
        }
    }

    /** Keep the existing export contract without creating an archive. Invalid JSON fails generation. */
    fun sanitizeGeePlain(json: String): String {
        val runtime = setOf("app", "ven", "ts", "appId", "sign", "uid", "token",
            "timeStamp", "nonce", "tokenSign", "headerSign", "appVersion")
        fun clean(value: Any?, path: String = ""): Any? = when (value) {
            is JSONObject -> {
                val out = JSONObject()
                val names = value.keys()
                while (names.hasNext()) {
                    val key = names.next()
                    val rootField = path.isEmpty() && runtime.contains(key)
                    val devRuntime = path == "data.dev" && (key == "app" || key == "ven")
                    if (!rootField && !devRuntime) {
                        val childPath = if (path.isEmpty()) key else "$path.$key"
                        out.put(key, clean(value.get(key), childPath))
                    }
                }
                out
            }
            is JSONArray -> {
                val out = JSONArray()
                for (i in 0 until value.length()) out.put(clean(value.get(i), path))
                out
            }
            else -> value
        }
        return (clean(JSONObject(json)) as JSONObject).toString()
    }

}
