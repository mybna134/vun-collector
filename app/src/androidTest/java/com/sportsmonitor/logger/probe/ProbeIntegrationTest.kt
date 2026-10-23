package com.sportsmonitor.logger.probe

import android.Manifest
import android.content.Context
import android.content.pm.PackageManager
import android.os.ParcelFileDescriptor
import android.view.accessibility.AccessibilityNodeInfo
import androidx.core.content.ContextCompat
import androidx.test.core.app.ActivityScenario
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import com.research.geetokenprobe.DeviceCollector
import com.sportsmonitor.logger.MainActivity
import com.sportsmonitor.logger.LoggerApplication
import com.sportsmonitor.logger.recording.LiveRecordingState
import com.sportsmonitor.logger.recording.RecordingService
import com.sportsmonitor.logger.data.RecordingExporter
import kotlinx.coroutines.runBlocking
import androidx.lifecycle.ViewModelProvider
import org.json.JSONObject
import org.junit.Assert.*
import org.junit.Assume.assumeTrue
import org.junit.Test
import org.junit.FixMethodOrder
import org.junit.runners.MethodSorters
import org.junit.runner.RunWith
import java.io.File

@RunWith(AndroidJUnit4::class)
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
class ProbeIntegrationTest {
    private val context = ApplicationProvider.getApplicationContext<Context>()

    @Test fun b_configuredSdkAutomaticallyDecryptsOnArm64() {
        assumeTrue(GeeSdk.unavailableReason(context) == null)
        val token = GeeSdk.generate(context)
        assertTrue(token.startsWith("R0VFAA"))
        assertTrue(JSONObject(ProbeJson.decrypt(token)).length() > 0)
    }

    @Test fun a_originalSdkWithoutOptionalPermissionsDoesNotThrow() {
        assumeTrue(GeeSdk.unavailableReason(context) == null)
        // Do not revoke permissions in instrumentation: revoking our own UID kills the run.
        val token = GeeSdk.generate(context)
        assertTrue(JSONObject(ProbeJson.decrypt(token)).length() > 0)
    }

    @Test fun completeDeviceReportAndStableIdentity() {
        val first = JSONObject(DeviceCollector.collectReport(context))
        val second = JSONObject(DeviceCollector.collectReport(context))
        assertEquals(setOf("hm"), first.keys().asSequence().toSet())
        val hm = first.getJSONObject("hm")
        assertEquals(setOf("physicPixel", "logicPixel", "isRoot", "osType", "IMEI", "blMac",
            "cpuModel", "deviceName", "appInstallTime", "androidId", "DeviceId", "appUpdateTime",
            "wifiMac", "CustomDeviceId", "osVersion"), hm.keys().asSequence().toSet())
        for (key in hm.keys()) assertTrue(hm.get(key) is String)
        assertEquals(hm.getString("DeviceId"), second.getJSONObject("hm").getString("DeviceId"))
        for (key in listOf("IMEI", "androidId", "blMac", "wifiMac", "CustomDeviceId")) assertEquals("", hm.getString(key))
        val authed = DeviceCollector.headerMapAuthed(context, "123", "test-token")
        assertEquals(DeviceCollector.tokenSign(authed["timeStamp"], "test-token", "123"), authed["tokenSign"])
    }

    @Test fun jsonFilteringPreservesValuesAndRejectsInvalidPlaintext() {
        val filtered = JSONObject(ProbeJson.sanitizeGeePlain(
            """{"app":"runtime","device":"中文 {,}","nested":[{"nonce":"x","ok":true,"count":2}],"nullValue":null}"""))
        assertFalse(filtered.has("app"))
        assertEquals("中文 {,}", filtered.getString("device"))
        assertTrue(filtered.isNull("nullValue"))
        val nested = filtered.getJSONArray("nested").getJSONObject(0)
        assertFalse(nested.has("nonce"))
        assertTrue(nested.getBoolean("ok"))
        assertEquals(2, nested.getInt("count"))
        assertThrows(org.json.JSONException::class.java) { ProbeJson.sanitizeGeePlain("not json") }
        assertThrows(IllegalArgumentException::class.java) { ProbeJson.decrypt("invalid") }
    }

    @Test fun tabsRecreationExportAndNoAutomaticArchives() {
        wake()
        val directory = context.getExternalFilesDir(null) ?: context.filesDir
        fun archives() = directory.listFiles().orEmpty().filter {
            it.name == "geetokens.txt" || it.name.startsWith("gee_plain_") || it.name.startsWith("device_info_")
        }.associate { it.name to (it.length() to it.lastModified()) }
        val before = archives()
        ActivityScenario.launch(MainActivity::class.java).use { scenario ->
            click("DeviceInfo")
            assertButtonEnabled("导出", false)
            click("生成")
            awaitState(scenario) { it.device.value.canExport }
            assertButtonEnabled("导出", true)
            for (removed in listOf("复制 JSON", "存档", "完整设备报告", "已保存报告")) assertAbsent(removed)
            var expected = ""
            val file = File(context.cacheDir, "device-memory-export-test.json")
            try {
                scenario.onActivity {
                    val vm = ViewModelProvider(it)[ProbeViewModel::class.java]
                    expected = vm.device.value.result!!.json
                    assertNotNull(vm.beginExport(ProbeTool.DEVICE))
                    assertFalse(vm.device.value.canGenerate)
                }
                scenario.recreate()
                scenario.onActivity {
                    val vm = ViewModelProvider(it)[ProbeViewModel::class.java]
                    assertNotNull(vm.exporting.value)
                    vm.finishExport(android.net.Uri.fromFile(file))
                }
                awaitState(scenario) { it.exporting.value == null }
                assertEquals(expected, file.readText())
                scenario.onActivity {
                    val vm = ViewModelProvider(it)[ProbeViewModel::class.java]
                    assertNotNull(vm.beginExport(ProbeTool.DEVICE))
                    vm.finishExport(null)
                    assertTrue(vm.device.value.canExport)
                    assertNotNull(vm.beginExport(ProbeTool.DEVICE))
                    vm.finishExport(android.net.Uri.parse("content://missing.provider/probe.json"))
                }
                awaitState(scenario) { it.exporting.value == null }
                scenario.onActivity {
                    val vm = ViewModelProvider(it)[ProbeViewModel::class.java]
                    assertEquals(expected, vm.device.value.result!!.json)
                    assertTrue(vm.device.value.canExport)
                }
                click("GeeToken")
                scenario.recreate()
                click("DeviceInfo")
                assertButtonEnabled("导出", true)
                scenario.onActivity { assertEquals(expected, ViewModelProvider(it)[ProbeViewModel::class.java].device.value.result!!.json) }
                click("生成")
                awaitState(scenario) { it.device.value.canExport }
                assertEquals(before, archives())
            } finally { file.delete() }
        }
        // A new activity owner gets an empty ViewModel, independent of old files.
        ActivityScenario.launch(MainActivity::class.java).use { scenario ->
            scenario.onActivity {
                val vm = ViewModelProvider(it)[ProbeViewModel::class.java]
                assertNull(vm.device.value.result)
                assertFalse(vm.device.value.canExport)
            }
        }
    }

    @Test fun uiGenerationAutomaticallyDecryptsAndExports() {
        assumeTrue(GeeSdk.unavailableReason(context) == null)
        wake()
        ActivityScenario.launch(MainActivity::class.java).use { scenario ->
            click("GeeToken")
            assertButtonEnabled("导出", false)
            click("生成")
            awaitState(scenario) { it.gee.value.canExport }
            for (removed in listOf("无配置生成", "带配置生成", "复制 Token", "解密明文", "存档")) assertAbsent(removed)
            val file = File(context.cacheDir, "gee-memory-export-test.json")
            var expected = ""
            try {
                scenario.onActivity {
                    val vm = ViewModelProvider(it)[ProbeViewModel::class.java]
                    expected = vm.gee.value.result!!.json
                    assertTrue(JSONObject(expected).length() > 0)
                    assertNotNull(vm.beginExport(ProbeTool.GEE))
                    vm.finishExport(android.net.Uri.fromFile(file))
                }
                awaitState(scenario) { it.exporting.value == null }
                assertEquals(expected, file.readText())
                scenario.recreate()
                scenario.onActivity { assertEquals(expected, ViewModelProvider(it)[ProbeViewModel::class.java].gee.value.result!!.json) }
            } finally { file.delete() }
        }
    }

    @Test fun motionHistorySheetDetailPaginationEditAndDelete() {
        wake()
        val app = context as LoggerApplication
        val dao = app.database.recordingDao()
        val id = "sheet-test-${System.nanoTime()}"
        val name = "Sheet history test ${System.nanoTime()}"
        runBlocking {
            dao.insertRecording(com.sportsmonitor.logger.data.RecordingEntity(
                id = id, name = name, startMs = System.currentTimeMillis(),
                endMs = System.currentTimeMillis() + 1000,
                status = com.sportsmonitor.logger.data.RecordingStatus.STOPPED))
            dao.insertSensorSamples((0..100).map {
                com.sportsmonitor.logger.data.SensorSampleEntity(recordingId = id,
                    sensorType = android.hardware.Sensor.TYPE_ACCELEROMETER,
                    timestampEpochMs = 1000L + it, originalEventTimestampNs = it.toLong(),
                    valueX = it.toDouble(), valueY = 0.0, valueZ = 0.0)
            })
        }
        val file = File(context.cacheDir, "sheet-export-test.json")
        try {
            ActivityScenario.launch(MainActivity::class.java).use { scenario ->
                click("历史记录")
                click(name)
                waitFor("返回列表")
                lateinit var vm: com.sportsmonitor.logger.LoggerViewModel
                awaitLoggerState(scenario) { it.detail?.id == id && !it.loading && it.sensorPoints.size == 100 }
                scenario.onActivity {
                    vm = ViewModelProvider(it)[com.sportsmonitor.logger.LoggerViewModel::class.java]
                    assertTrue(vm.hasMore)
                    vm.loadMore()
                }
                awaitLoggerState(scenario) { !it.loading && it.sensorPoints.size == 101 }
                // Detail back stays in the Sheet; another back dismisses to collection.
                shell("input keyevent KEYCODE_BACK")
                waitFor("历史记录")
                assertAbsent("关闭")
                click(name)
                waitFor("返回列表")
                awaitLoggerState(scenario) { it.detail?.id == id && !it.loading }
                scenario.onActivity { vm.rename(id, "$name edited", "sheet note") }
                awaitLoggerState(scenario) { it.detail?.name == "$name edited" }
                waitFor("sheet note")
                scenario.onActivity {
                    val point = vm.sensorPoints.first()
                    vm.editSensor(point, point.timestampEpochMs, 42.0, point.valueY, point.valueZ)
                }
                awaitLoggerState(scenario) { it.sensorPoints.firstOrNull()?.valueX == 42.0 }
                runBlocking { RecordingExporter(app.database).export(context.contentResolver, id,
                    android.net.Uri.fromFile(file), context.cacheDir) }
                val json = JSONObject(file.readText())
                assertEquals(2, json.getInt("schemaVersion"))
                assertEquals("$name edited", json.getJSONObject("recording").getString("name"))
                assertEquals(42.0, json.getJSONObject("sensorSamples").getJSONArray("1").getJSONObject(0).getDouble("x"), 0.0)
                val text = file.readText()
                val markerAt = text.lastIndexOf(",\n  \"sha256\": ")
                assertTrue(markerAt >= 0)
                val original = text.substring(0, markerAt) + "\n}"
                val checksum = java.security.MessageDigest.getInstance("SHA-256").digest(original.toByteArray(Charsets.UTF_8))
                    .joinToString("") { "%02x".format(it.toInt() and 255) }
                assertEquals(checksum, json.getString("sha256"))
                click("删除")
                waitFor("删除整次记录？")
                click("删除")
                waitFor("历史记录")
                assertAbsent("关闭")
                assertNull(runBlocking { dao.getRecording(id) })
                assertEquals(0, runBlocking { dao.sensorCount(id, null) })
                shell("input keyevent KEYCODE_BACK")
                waitFor("开始记录")
                click("历史记录")
                waitFor("历史记录")
                assertAbsent("关闭")
                shell("input keyevent KEYCODE_BACK")
                waitFor("开始记录")
            }
        } finally {
            file.delete()
            runBlocking { dao.deleteStopped(id) }
        }
    }

    private fun awaitLoggerState(scenario: ActivityScenario<MainActivity>, predicate: (com.sportsmonitor.logger.LoggerViewModel) -> Boolean) {
        val end = android.os.SystemClock.uptimeMillis() + 10000
        do {
            var ready = false
            scenario.onActivity { ready = predicate(ViewModelProvider(it)[com.sportsmonitor.logger.LoggerViewModel::class.java]) }
            if (ready) { InstrumentationRegistry.getInstrumentation().waitForIdleSync(); return }
            Thread.sleep(100)
        } while (android.os.SystemClock.uptimeMillis() < end)
        fail("History state did not become ready")
    }

    private fun wake() {
        shell("input keyevent KEYCODE_WAKEUP")
        shell("wm dismiss-keyguard")
    }

    private fun awaitState(scenario: ActivityScenario<MainActivity>, predicate: (ProbeViewModel) -> Boolean) {
        val end = android.os.SystemClock.uptimeMillis() + 30000
        do {
            var ready = false
            scenario.onActivity { ready = predicate(ViewModelProvider(it)[ProbeViewModel::class.java]) }
            if (ready) { InstrumentationRegistry.getInstrumentation().waitForIdleSync(); return }
            Thread.sleep(100)
        } while (android.os.SystemClock.uptimeMillis() < end)
        fail("Probe state did not become ready")
    }

    private fun assertButtonEnabled(text: String, enabled: Boolean) {
        var target: AccessibilityNodeInfo? = waitFor(text)
        while (target != null && !target.isClickable) target = target.parent
        assertNotNull(target)
        assertEquals(enabled, target!!.isEnabled)
    }

    private fun assertAbsent(text: String) {
        val automation = InstrumentationRegistry.getInstrumentation().uiAutomation
        if (android.os.Build.VERSION.SDK_INT >= 33) automation.clearCache()
        assertNull(node(automation.rootInActiveWindow, text))
    }

    @Test fun z_motionRecordingContinuesAcrossBothTabsAndExportsV2() {
        shell("input keyevent KEYCODE_WAKEUP")
        shell("wm dismiss-keyguard")
        for (permission in listOf(Manifest.permission.ACTIVITY_RECOGNITION, Manifest.permission.ACCESS_FINE_LOCATION,
            Manifest.permission.ACCESS_COARSE_LOCATION)) shell("pm grant ${context.packageName} $permission")
        val app = context as LoggerApplication
        var recordingId: String? = null
        try {
            ActivityScenario.launch(MainActivity::class.java).use { scenario ->
                scenario.onActivity {
                    it.window.addFlags(android.view.WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
                    RecordingService.start(it)
                }
                val end = android.os.SystemClock.uptimeMillis() + 10000
                while (LiveRecordingState.session.value.recordingId == null && android.os.SystemClock.uptimeMillis() < end) Thread.sleep(100)
                recordingId = LiveRecordingState.session.value.recordingId
                assertNotNull(recordingId)
                Thread.sleep(1500)
                val before = runBlocking { app.database.recordingDao().sensorCount(recordingId!!, android.hardware.Sensor.TYPE_ACCELEROMETER) }
                click("GeeToken")
                click("DeviceInfo")
                click("生成")
                waitFor("DeviceInfo 生成成功", 20000)
                assertEquals(recordingId, LiveRecordingState.session.value.recordingId)
                click("运动采集")
                assertNotNull(waitFor("停止记录"))
                click("历史记录")
                waitFor("历史记录")
                assertAbsent("关闭")
                shell("input keyevent KEYCODE_BACK")
                assertNotNull(waitFor("停止记录"))
                Thread.sleep(1500)
                val after = runBlocking { app.database.recordingDao().sensorCount(recordingId!!, android.hardware.Sensor.TYPE_ACCELEROMETER) }
                assertTrue("Real accelerometer samples must continue", after > before)
                RecordingService.stop(context)
                val stopEnd = android.os.SystemClock.uptimeMillis() + 10000
                while (LiveRecordingState.session.value.recordingId != null && android.os.SystemClock.uptimeMillis() < stopEnd) Thread.sleep(100)
                val exported = File(context.cacheDir, "motion-tab-test.json")
                try {
                    runBlocking { RecordingExporter(app.database).export(context.contentResolver, recordingId!!,
                        android.net.Uri.fromFile(exported), context.cacheDir) }
                    val json = JSONObject(exported.readText())
                    assertEquals(2, json.getInt("schemaVersion"))
                    assertEquals(64, json.getString("sha256").length)
                    assertTrue(json.getJSONObject("sensorSamples").getJSONArray("1").length() > 0)
                } finally { exported.delete() }
            }
        } finally {
            RecordingService.stop(context)
            recordingId?.let { id -> runBlocking { app.database.recordingDao().deleteStopped(id) } }
        }
    }

    private fun shell(command: String) {
        ParcelFileDescriptor.AutoCloseInputStream(
            InstrumentationRegistry.getInstrumentation().uiAutomation.executeShellCommand(command),
        ).use { it.readBytes() }
    }

    private fun node(root: AccessibilityNodeInfo?, text: String): AccessibilityNodeInfo? {
        fun search(current: AccessibilityNodeInfo?, exact: Boolean): AccessibilityNodeInfo? {
            current ?: return null
            val label = current.text?.toString()
            if (if (exact) label == text else label?.contains(text) == true) return current
            for (i in 0 until current.childCount) search(current.getChild(i), exact)?.let { return it }
            return null
        }
        return search(root, true) ?: search(root, false)
    }

    private fun waitFor(text: String, timeout: Long = 5000): AccessibilityNodeInfo {
        val automation = InstrumentationRegistry.getInstrumentation().uiAutomation
        val end = android.os.SystemClock.uptimeMillis() + timeout
        do {
            if (android.os.Build.VERSION.SDK_INT >= 33) automation.clearCache()
            val root = automation.rootInActiveWindow
            node(root, text)?.let { return it }
            // Android 16 shows a developer-only compatibility warning for the original SDK.
            // Acknowledge that informational dialog; do not grant runtime/root permissions.
            if (root?.packageName == "android" &&
                (node(root, "应用兼容性") != null || node(root, "Android App Compatibility") != null)) {
                fun button(n: AccessibilityNodeInfo?): AccessibilityNodeInfo? {
                    n ?: return null
                    if (n.className == "android.widget.Button" && n.isClickable) return n
                    for (i in 0 until n.childCount) button(n.getChild(i))?.let { return it }
                    return null
                }
                button(root)?.performAction(AccessibilityNodeInfo.ACTION_CLICK)
            }
            Thread.sleep(100)
        } while (android.os.SystemClock.uptimeMillis() < end)
        val root = automation.rootInActiveWindow
        fun labels(n: AccessibilityNodeInfo?, depth: Int = 0): String {
            if (n == null || depth > 12) return ""
            return (if (n.text == null && n.contentDescription == null) "" else "[${n.text?.take(100)}:${n.contentDescription?.take(100)}]") +
                (0 until n.childCount).joinToString("") { labels(n.getChild(it), depth + 1) }
        }
        throw AssertionError("Missing UI text: $text; root=${root?.packageName}; ${labels(root)}")
    }

    private fun click(text: String) {
        val instrumentation = InstrumentationRegistry.getInstrumentation()
        val end = android.os.SystemClock.uptimeMillis() + 10000
        do {
            var target: AccessibilityNodeInfo? = waitFor(text)
            while (target != null && !target.isClickable) target = target.parent
            if (target?.isEnabled == true && target.performAction(AccessibilityNodeInfo.ACTION_CLICK)) {
                instrumentation.waitForIdleSync()
                Thread.sleep(150)
                return
            }
            Thread.sleep(100)
        } while (android.os.SystemClock.uptimeMillis() < end)
        throw AssertionError("Enabled clickable node for $text")
    }

    private fun scrollTo(text: String) {
        val automation = InstrumentationRegistry.getInstrumentation().uiAutomation
        repeat(20) {
            if (android.os.Build.VERSION.SDK_INT >= 33) automation.clearCache()
            if (node(automation.rootInActiveWindow, text) != null) return
            val dm = context.resources.displayMetrics
            shell("input swipe ${dm.widthPixels / 2} ${dm.heightPixels * 4 / 5} ${dm.widthPixels / 2} ${dm.heightPixels / 3} 250")
            Thread.sleep(150)
        }
        throw AssertionError("Could not scroll to $text")
    }
}
