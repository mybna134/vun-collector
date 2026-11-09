package com.sportsmonitor.logger.settings

import android.content.Context
import com.sportsmonitor.logger.BuildConfig

/** 提供当前可用的 AMAP Android Key：运行时保存的 Key 优先，其次回退到构建时 Key。 */
class SettingsViewModel(private val context: Context) {

    /** 当前可用 Key：运行时保存值优先，缺省时使用构建时 Key。 */
    fun currentKey(): String = SettingsStore.loadKey(context) ?: BuildConfig.AMAP_ANDROID_KEY

    /** 保存运行时 Key，保存后立即生效。 */
    fun saveKey(key: String): Boolean = SettingsStore.saveKey(context, key.trim())

    fun clearKey(): Boolean = SettingsStore.clearKey(context)
}
