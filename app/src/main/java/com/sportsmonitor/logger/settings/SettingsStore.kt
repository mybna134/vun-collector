package com.sportsmonitor.logger.settings

import android.content.Context

/** 持久化运行时 AMAP Android Key，优先级高于构建时 Key。 */
object SettingsStore {
    private const val PREFS = "amap_settings"
    private const val KEY = "amap_android_key"
    fun saveKey(context: Context, key: String): Boolean {
        return context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
            .edit()
            .putString(KEY, key)
            .commit()
    }

    fun loadKey(context: Context): String? {
        return context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
            .getString(KEY, null)
            ?.takeIf { it.isNotBlank() }
    }

    fun clearKey(context: Context): Boolean {
        return context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
            .edit()
            .remove(KEY)
            .commit()
    }
}
