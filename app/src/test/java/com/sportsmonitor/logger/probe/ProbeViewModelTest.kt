package com.sportsmonitor.logger.probe

import android.app.Application
import android.content.SharedPreferences
import org.junit.Assert.assertEquals
import org.junit.Test

class ProbeViewModelTest {

    private class FakeSharedPreferences(
        val data: MutableMap<String, Any?> = mutableMapOf()
    ) : SharedPreferences {
        override fun getAll(): MutableMap<String, *> = data
        override fun getString(key: String?, defValue: String?): String? = data[key] as? String ?: defValue
        override fun getStringSet(key: String?, defValues: MutableSet<String>?): MutableSet<String>? =
            @Suppress("UNCHECKED_CAST") (data[key] as? MutableSet<String>) ?: defValues
        override fun getInt(key: String?, defValue: Int): Int = (data[key] as? Int) ?: defValue
        override fun getLong(key: String?, defValue: Long): Long = (data[key] as? Long) ?: defValue
        override fun getFloat(key: String?, defValue: Float): Float = (data[key] as? Float) ?: defValue
        override fun getBoolean(key: String?, defValue: Boolean): Boolean = (data[key] as? Boolean) ?: defValue
        override fun contains(key: String?): Boolean = data.containsKey(key)
        override fun edit(): SharedPreferences.Editor = FakeEditor(data)
        override fun registerOnSharedPreferenceChangeListener(listener: SharedPreferences.OnSharedPreferenceChangeListener?) {}
        override fun unregisterOnSharedPreferenceChangeListener(listener: SharedPreferences.OnSharedPreferenceChangeListener?) {}

        class FakeEditor(private val data: MutableMap<String, Any?>) : SharedPreferences.Editor {
            private val staging = mutableMapOf<String, Any?>()
            private var clearRequested = false

            override fun putString(key: String?, value: String?): SharedPreferences.Editor {
                if (key != null) staging[key] = value
                return this
            }
            override fun putStringSet(key: String?, values: MutableSet<String>?): SharedPreferences.Editor = this
            override fun putInt(key: String?, value: Int): SharedPreferences.Editor = this
            override fun putLong(key: String?, value: Long): SharedPreferences.Editor = this
            override fun putFloat(key: String?, value: Float): SharedPreferences.Editor = this
            override fun putBoolean(key: String?, value: Boolean): SharedPreferences.Editor = this
            override fun remove(key: String?): SharedPreferences.Editor {
                if (key != null) staging[key] = null
                return this
            }
            override fun clear(): SharedPreferences.Editor {
                clearRequested = true
                return this
            }
            override fun commit(): Boolean {
                apply()
                return true
            }
            override fun apply() {
                if (clearRequested) data.clear()
                for ((k, v) in staging) {
                    if (v == null) data.remove(k) else data[k] = v
                }
            }
        }
    }

    @Test
    fun defaultKeyConstantValueIsExpected() {
        assertEquals("3223389267b46eb28d4559ece915670b", ProbeViewModel.DEFAULT_AMAP_WEB_KEY)
    }

    @Test
    fun resolveAmapKeyFallsBackOnNullOrBlank() {
        assertEquals(ProbeViewModel.DEFAULT_AMAP_WEB_KEY, ProbeViewModel.resolveAmapKey(null))
        assertEquals(ProbeViewModel.DEFAULT_AMAP_WEB_KEY, ProbeViewModel.resolveAmapKey(""))
        assertEquals(ProbeViewModel.DEFAULT_AMAP_WEB_KEY, ProbeViewModel.resolveAmapKey("   "))
        assertEquals("custom_amap_key_12345", ProbeViewModel.resolveAmapKey("custom_amap_key_12345"))
    }

    @Test
    fun initialLaunchWithEmptyPreferencesYieldsDefaultKey() {
        val prefs = FakeSharedPreferences()
        val app = Application()
        val vm = ProbeViewModel(app, prefs)
        assertEquals(ProbeViewModel.DEFAULT_AMAP_WEB_KEY, vm.amapKey.value)
    }

    @Test
    fun blankPreferencesYieldsDefaultKey() {
        val prefs = FakeSharedPreferences(mutableMapOf("amap_web_key" to "   "))
        val app = Application()
        val vm = ProbeViewModel(app, prefs)
        assertEquals(ProbeViewModel.DEFAULT_AMAP_WEB_KEY, vm.amapKey.value)
    }

    @Test
    fun customKeyPersistsAndOverridesDefault() {
        val prefs = FakeSharedPreferences()
        val app = Application()
        val vm = ProbeViewModel(app, prefs)
        assertEquals(ProbeViewModel.DEFAULT_AMAP_WEB_KEY, vm.amapKey.value)

        val customKey = "my_custom_override_key_999"
        vm.updateAmapKey(customKey)

        assertEquals(customKey, vm.amapKey.value)
        assertEquals(customKey, prefs.getString("amap_web_key", null))

        // New ViewModel instance reads back the persisted custom key
        val nextVm = ProbeViewModel(app, prefs)
        assertEquals(customKey, nextVm.amapKey.value)
    }
}
