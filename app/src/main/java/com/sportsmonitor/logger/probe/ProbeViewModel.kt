package com.sportsmonitor.logger.probe

import android.app.Application
import android.net.Uri
import android.provider.DocumentsContract
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.viewModelScope
import com.research.geetokenprobe.DeviceCollector
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.NonCancellable
import kotlinx.coroutines.asCoroutineDispatcher
import kotlinx.coroutines.channels.Channel
import kotlinx.coroutines.flow.receiveAsFlow
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import kotlinx.coroutines.TimeoutCancellationException
import org.json.JSONObject
import java.lang.reflect.InvocationTargetException
import java.util.concurrent.Executors

class ProbeViewModel internal constructor(
    application: Application,
    private val locationAwaiter: LocationAwaiter = LocationAwaiter(application),
    private val session: ProbeSession = ProbeSession(),
) : AndroidViewModel(application) {
    constructor(application: Application) : this(application, LocationAwaiter(application))

    private val app = application
    val gee = session.gee
    val device = session.device
    val geo = session.geo
    val exporting = session.exporting
    internal var readSimOperator: () -> String? = { SimOperator.read(app) }
    val unavailable = GeeSdk.unavailableReason(app)
    private val notifications = Channel<String>(Channel.BUFFERED)
    val messages = notifications.receiveAsFlow()

    fun notifyUnavailable() { unavailable?.let(::message) }

    fun generate(permissionWarning: String = "") {
        unavailable?.let { message(it); return }
        if (!session.beginGeneration(ProbeTool.GEE)) return
        viewModelScope.launch {
            try {
                locationAwaiter.await()
                val token = withContext(sdkDispatcher) { GeeSdk.generate(app) }
                val json = withContext(Dispatchers.Default) { ProbeJson.decrypt(token) }
                ProbeJson.requireValidLocation(json)
                session.completeGeneration(ProbeTool.GEE, json)
                message("GeeToken 生成成功$permissionWarning")
            } catch (error: Throwable) {
                session.failGeneration(ProbeTool.GEE)
                if (error is CancellationException && error !is TimeoutCancellationException) throw error
                val detail = if (error is TimeoutCancellationException) {
                    "定位超时，请确保已开启精确定位并移至室外后重试"
                } else {
                    describe(error)
                }
                message("GeeToken 生成失败：$detail$permissionWarning")
            }
        }
    }

    fun fetchCity() {
        if (!session.beginGeneration(ProbeTool.GEO)) return
        viewModelScope.launch {
            try {
                val location = locationAwaiter.awaitCity()
                val cityJson = GeoCity.exportJson(location)
                val operator = readSimOperator()
                val json = GeoCity.attachCarrier(cityJson, operator)
                val city = GeoCity.cityFromExport(json)
                session.completeGeneration(ProbeTool.GEO, json)
                val missing = buildList {
                    if (location.province == null) add("省")
                    if (location.district == null) add("区")
                }
                message(GeoCity.collectionMessage(city, operator) +
                    if (missing.isEmpty()) "" else " · 高德 SDK 未返回${missing.joinToString("、")}")
            } catch (error: Throwable) {
                session.failGeneration(ProbeTool.GEO)
                if (error is CancellationException && error !is TimeoutCancellationException) throw error
                val detail = if (error is TimeoutCancellationException) {
                    "定位超时，请确保已开启精确定位并移至室外后重试"
                } else {
                    describe(error)
                }
                message("城市获取失败：$detail")
            }
        }
    }

    fun collectDevice() {
        if (!session.beginGeneration(ProbeTool.DEVICE)) return
        viewModelScope.launch {
            try {
                val report = withContext(Dispatchers.IO) {
                    DeviceCollector.collectReport(app).also { JSONObject(it) }
                }
                session.completeGeneration(ProbeTool.DEVICE, report)
                message("DeviceInfo 生成成功")
            } catch (error: Throwable) {
                session.failGeneration(ProbeTool.DEVICE)
                rethrowFatal(error)
                message("DeviceInfo 生成失败：${describe(error)}")
            }
        }
    }

    fun beginExport(tool: ProbeTool): ProbeExport? = session.beginExport(tool)

    fun cancelExport(reason: String = "已取消导出") {
        val export = session.claimExport() ?: return
        session.completeExport(export)
        message(reason)
    }

    fun finishExport(uri: Uri?) {
        if (uri == null) { cancelExport(); return }
        val export = session.claimExport() ?: return
        viewModelScope.launch {
            try {
                withContext(Dispatchers.IO) {
                    export.writeTo(requireNotNull(app.contentResolver.openOutputStream(uri, "wt")) { "无法打开目标文件" })
                }
                message("已导出 ${export.name}")
            } catch (error: Exception) {
                val cleaned = withContext(NonCancellable + Dispatchers.IO) {
                    runCatching { DocumentsContract.deleteDocument(app.contentResolver, uri) }.getOrDefault(false)
                }
                if (error is CancellationException) throw error
                message("导出失败：${describe(error)}" + if (cleaned) "" else "；目标位置可能残留不完整文件")
            } finally {
                session.completeExport(export)
            }
        }
    }

    private fun message(value: String) { notifications.trySend(value) }

    private fun describe(error: Throwable): String {
        val cause = if (error is InvocationTargetException) error.targetException else error
        return "${cause.javaClass.simpleName}: ${cause.message ?: "未知错误"}"
    }

    private fun rethrowFatal(error: Throwable) {
        if (error is CancellationException || error is VirtualMachineError || error is ThreadDeath) throw error
    }

    companion object {
        // JNI has no cancellation API. Keep one process-wide worker and class loader.
        private val sdkDispatcher = Executors.newSingleThreadExecutor { runnable ->
            Thread(runnable, "geetest-collector").apply { isDaemon = true }
        }.asCoroutineDispatcher()
    }
}
