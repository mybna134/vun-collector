package com.sportsmonitor.logger.probe

import org.json.JSONArray
import org.json.JSONObject

object ProbeJson {
    fun decrypt(token: String): String = sanitizeGeePlain(GeeDecrypt.decrypt(token))

    /** Keep the existing export contract without creating an archive. Invalid JSON fails generation. */
    fun sanitizeGeePlain(json: String): String {
        val runtime = setOf("app", "ven", "ts", "appId", "sign", "uid", "token",
            "timeStamp", "nonce", "tokenSign", "headerSign", "appVersion")
        fun clean(value: Any?): Any? = when (value) {
            is JSONObject -> {
                val out = JSONObject()
                val names = value.keys()
                while (names.hasNext()) {
                    val key = names.next()
                    if (!runtime.contains(key)) out.put(key, clean(value.get(key)))
                }
                out
            }
            is JSONArray -> {
                val out = JSONArray()
                for (i in 0 until value.length()) out.put(clean(value.get(i)))
                out
            }
            else -> value
        }
        return (clean(JSONObject(json)) as JSONObject).toString()
    }

}
