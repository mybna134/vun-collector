package com.sportsmonitor.logger

import android.Manifest
import android.os.Build
import android.os.Bundle
import android.content.Intent
import android.net.Uri
import android.provider.Settings
import androidx.activity.compose.BackHandler
import androidx.activity.ComponentActivity
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.compose.setContent
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.Button
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.ModalBottomSheet
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.rememberModalBottomSheetState
import androidx.compose.material3.Scaffold
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.Text
import androidx.compose.material3.PrimaryScrollableTabRow
import androidx.compose.material3.Tab
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.ui.Modifier
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.core.content.ContextCompat
import android.content.pm.PackageManager
import com.sportsmonitor.logger.probe.ProbeViewModel
import com.sportsmonitor.logger.location.AmapConsent
import com.sportsmonitor.logger.location.AmapLocationSource
import com.sportsmonitor.logger.probe.ProbePage
import com.sportsmonitor.logger.probe.GeoPage
import com.sportsmonitor.logger.probe.ProbeTool
import com.sportsmonitor.logger.data.RecordingStatus
import com.sportsmonitor.logger.data.RecordingSummary
import com.sportsmonitor.logger.data.SampleRules
import com.sportsmonitor.logger.recording.LiveRecordingState
import com.sportsmonitor.logger.recording.LiveSession
import com.sportsmonitor.logger.recording.RecordingService
import com.sportsmonitor.logger.settings.SettingsPage
import com.sportsmonitor.logger.settings.SettingsViewModel
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import com.sportsmonitor.logger.update.OtaUpdates
import com.sportsmonitor.logger.update.UpdateManifest
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent { MaterialTheme { LoggerRoot() } }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun LoggerRoot(vm: LoggerViewModel = viewModel(), probe: ProbeViewModel = viewModel()) {
    val context = LocalContext.current
    val summaries by vm.summaries.collectAsState()
    val live by LiveRecordingState.session.collectAsState()
    var historyVisible by rememberSaveable { mutableStateOf(false) }
    var historyDetailId by rememberSaveable { mutableStateOf<String?>(null) }
    var selectedTab by rememberSaveable { androidx.compose.runtime.mutableIntStateOf(0) }
    var requestedGeneration by rememberSaveable { mutableStateOf(false) }
    var requestedGeo by rememberSaveable { mutableStateOf(false) }
    val gee by probe.gee.collectAsState()
    val device by probe.device.collectAsState()
    val geo by probe.geo.collectAsState()
    val settings = remember { SettingsViewModel(context) }
    val pendingProbeExport by probe.exporting.collectAsState()
    var exportId by rememberSaveable { mutableStateOf<String?>(null) }
    val snackbar = remember { SnackbarHostState() }
    val coroutineScope = rememberCoroutineScope()
    var availableUpdate by remember { mutableStateOf<UpdateManifest?>(null) }
    var updateDownloadInProgress by remember { mutableStateOf(false) }
    fun withAmapConsent(requireAmapKey: Boolean = true, action: () -> Unit) {
        // GeeToken 预定位用 GPS，不需要高德 SDK Key
        // 城市采集和运动记录需要高德 SDK
        if (requireAmapKey && (BuildConfig.AMAP_ANDROID_KEY.isBlank() || !AmapConsent.agreed(context))) {
            vm.showMessage("高德 SDK 不可用（Key 未配置或未同意隐私），该功能无法使用")
            return
        }
        action()
    }
    fun generate() {
        if (ContextCompat.checkSelfPermission(context, Manifest.permission.ACCESS_FINE_LOCATION) != PackageManager.PERMISSION_GRANTED) {
            vm.showMessage("需要精确定位权限")
            return
        }
        val phoneWarning = if (ContextCompat.checkSelfPermission(context, Manifest.permission.READ_PHONE_STATE) == PackageManager.PERMISSION_GRANTED) "" else " · 电话权限未授予，部分字段可能缺失"
        probe.generate(phoneWarning)
    }
    val probePermissions = rememberLauncherForActivityResult(ActivityResultContracts.RequestMultiplePermissions()) {
        if (requestedGeneration) generate()
        requestedGeneration = false
    }
    val probeDocument = rememberLauncherForActivityResult(ActivityResultContracts.CreateDocument("application/json")) {
        probe.finishExport(it)
    }
    val exportProbe: (ProbeTool) -> Unit = { tool ->
        probe.beginExport(tool)?.let { export ->
            try { probeDocument.launch(export.name) }
            catch (error: Exception) { probe.cancelExport(error.message ?: "无法打开文件选择器") }
        }
    }
    val geoPermissions = rememberLauncherForActivityResult(ActivityResultContracts.RequestMultiplePermissions()) {
        if (requestedGeo &&
            ContextCompat.checkSelfPermission(context, Manifest.permission.ACCESS_FINE_LOCATION) == PackageManager.PERMISSION_GRANTED
        ) {
            probe.fetchCity()
        } else if (requestedGeo) {
            vm.showMessage("需要精确定位权限")
        }
        requestedGeo = false
    }
    val fetchGeo: () -> Unit = {
        val missing = listOf(
            Manifest.permission.ACCESS_FINE_LOCATION,
            Manifest.permission.ACCESS_COARSE_LOCATION,
            Manifest.permission.READ_PHONE_STATE,
        ).filter {
            ContextCompat.checkSelfPermission(context, it) != PackageManager.PERMISSION_GRANTED
        }
        val locationGranted = ContextCompat.checkSelfPermission(
            context, Manifest.permission.ACCESS_FINE_LOCATION,
        ) == PackageManager.PERMISSION_GRANTED
        if (locationGranted && missing.isEmpty()) probe.fetchCity()
        else {
            requestedGeo = true
            geoPermissions.launch(missing.toTypedArray())
        }
    }
    val generateProbe: () -> Unit = {
        val requested = mutableListOf(Manifest.permission.READ_PHONE_STATE,
            Manifest.permission.ACCESS_FINE_LOCATION, Manifest.permission.ACCESS_COARSE_LOCATION)
        if (Build.VERSION.SDK_INT <= 32) requested += Manifest.permission.READ_EXTERNAL_STORAGE
        val missing = requested.filter { ContextCompat.checkSelfPermission(context, it) != PackageManager.PERMISSION_GRANTED }.toMutableList()
        if (Manifest.permission.ACCESS_FINE_LOCATION in missing && Manifest.permission.ACCESS_COARSE_LOCATION !in missing) {
            missing += Manifest.permission.ACCESS_COARSE_LOCATION
        }
        if (missing.isEmpty()) generate()
        else {
            requestedGeneration = true
            probePermissions.launch(missing.toTypedArray())
        }
    }
    val permissions = rememberLauncherForActivityResult(ActivityResultContracts.RequestMultiplePermissions()) {
        try { RecordingService.start(context) } catch (error: Exception) {
            vm.showMessage(error.message ?: "无法开始记录")
        }
    }
    val createDocument = rememberLauncherForActivityResult(ActivityResultContracts.CreateDocument("application/json")) { uri ->
        val id = exportId
        exportId = null
        if (uri == null) vm.showMessage("已取消导出")
        else if (id != null) vm.export(id, uri)
    }
    LaunchedEffect(vm.message) {
        vm.message?.let { snackbar.showSnackbar(it); vm.clearMessage() }
    }
    LaunchedEffect(probe) { probe.messages.collect { snackbar.showSnackbar(it) } }
    LaunchedEffect(selectedTab) {
        if (selectedTab == 1) probe.notifyUnavailable()
    }
    // Restore a Sheet detail after process recreation without restoring probe data.
    LaunchedEffect(historyDetailId) {
        historyDetailId?.let { if (vm.detail?.id != it) vm.openDetail(it) }
    }
    LaunchedEffect(Unit) {
        availableUpdate = withContext(Dispatchers.IO) {
            runCatching {
                val installedCode = context.packageManager.getPackageInfo(context.packageName, 0).longVersionCode.toInt()
                OtaUpdates.check(BuildConfig.KSTORE_UPDATE_URL, installedCode)
            }.getOrNull()
        }
    }
    Scaffold(
        topBar = { TopAppBar(title = { Text(stringResource(R.string.app_name)) }) },
        snackbarHost = { SnackbarHost(snackbar) },
    ) { padding ->
        Column(Modifier.fillMaxSize().padding(padding).padding(16.dp)) {
            val tabs = listOf("运动采集", "GeeToken", "DeviceInfo", "其他信息", "Settings")
            PrimaryScrollableTabRow(selectedTabIndex = selectedTab, edgePadding = 0.dp) {
                tabs.forEachIndexed { index, title ->
                    Tab(selected = selectedTab == index, onClick = {
                        if (selectedTab != index) {
                            historyVisible = false
                            historyDetailId = null
                            selectedTab = index
                        }
                    }, text = { Text(title) })
                }
            }
            Spacer(Modifier.height(12.dp))
            when (selectedTab) {
                1 -> ProbePage("GeeToken", gee, pendingProbeExport != null, probe.unavailable == null,
                    onGenerate = { withAmapConsent(requireAmapKey = false, action = generateProbe) }, onExport = { exportProbe(ProbeTool.GEE) })
                2 -> ProbePage("DeviceInfo", device, pendingProbeExport != null,
                    onGenerate = probe::collectDevice, onExport = { exportProbe(ProbeTool.DEVICE) })
                3 -> GeoPage("其他信息", geo,
                    AmapLocationSource.unavailableReason(context) ?: "高德 Android 定位 SDK 已配置",
                    pendingProbeExport != null,
                    { withAmapConsent(action = fetchGeo) },
                    onExport = { exportProbe(ProbeTool.GEO) })
                4 -> SettingsPage(settings)
                else -> RecordingPage(live,
                    onStart = { withAmapConsent {
                        val requested = mutableListOf(Manifest.permission.ACTIVITY_RECOGNITION,
                            Manifest.permission.ACCESS_FINE_LOCATION, Manifest.permission.ACCESS_COARSE_LOCATION)
                        if (Build.VERSION.SDK_INT >= 33) requested += Manifest.permission.POST_NOTIFICATIONS
                        permissions.launch(requested.toTypedArray())
                    } },
                    onStop = { RecordingService.stop(context) },
                    onList = { historyDetailId = null; historyVisible = true })
            }
        }
    }
    availableUpdate?.let { update ->
        AlertDialog(
            onDismissRequest = { if (!updateDownloadInProgress) availableUpdate = null },
            title = { Text("更新") },
            text = {
                Column {
                    Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                        Text("${update.versionCode}")
                        Text(update.commitComment)
                    }
                    if (updateDownloadInProgress) Text("正在下载更新…")
                }
            },
            confirmButton = {
                Button(enabled = !updateDownloadInProgress, onClick = {
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O && !context.packageManager.canRequestPackageInstalls()) {
                        val intent = Intent(Settings.ACTION_MANAGE_UNKNOWN_APP_SOURCES).apply {
                            data = Uri.parse("package:${context.packageName}")
                            addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                        }
                        context.startActivity(intent)
                        return@Button
                    }
                    updateDownloadInProgress = true
                    coroutineScope.launch {
                        runCatching {
                            withContext(Dispatchers.IO) { OtaUpdates.download(context, update.apkUrl) }
                        }.onSuccess { apk ->
                            availableUpdate = null
                            runCatching { OtaUpdates.install(context, apk) }
                                .onFailure { snackbar.showSnackbar(it.message ?: "无法启动安装程序") }
                        }.onFailure { snackbar.showSnackbar(it.message ?: "下载更新失败") }
                        updateDownloadInProgress = false
                    }
                }) { Text(if (updateDownloadInProgress) "下载中" else "确认") }
            },
            dismissButton = {
                OutlinedButton(enabled = !updateDownloadInProgress, onClick = { availableUpdate = null }) {
                    Text("取消")
                }
            },
        )
    }
    if (historyVisible && selectedTab == 0) {
        val sheetState = rememberModalBottomSheetState(skipPartiallyExpanded = true)
        ModalBottomSheet(
            onDismissRequest = { historyVisible = false; historyDetailId = null },
            sheetState = sheetState,
        ) {
            Column(Modifier.fillMaxWidth().fillMaxHeight(0.9f).padding(horizontal = 16.dp)) {
                // Handle detail back before the sheet's own dismiss back handler.
                BackHandler(enabled = historyDetailId != null) { historyDetailId = null }
                if (historyDetailId == null) {
                    RecordsPage(summaries, onOpen = { id ->
                        vm.openDetail(id)
                        historyDetailId = id
                    })
                } else {
                    DetailPage(vm, onBack = { historyDetailId = null }, onExport = { record ->
                        exportId = record.id
                        createDocument.launch("sensor-recording-${record.startMs}.json")
                    }, onDeleted = { historyDetailId = null })
                }
            }
        }
    }
}

@Composable
private fun RecordingPage(live: LiveSession, onStart: () -> Unit, onStop: () -> Unit, onList: () -> Unit) {
    Text("传感器与位置记录", style = MaterialTheme.typography.headlineSmall)
    Spacer(Modifier.height(12.dp))
    Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
        Button(onClick = if (live.recordingId == null) onStart else onStop) {
            Text(if (live.recordingId == null) "开始记录" else "停止记录")
        }
        OutlinedButton(onClick = onList) { Text("历史记录") }
    }
    Spacer(Modifier.height(8.dp))
    Text(if (live.recordingId == null) "尚未采集" else "正在记录：${live.recordingId}")
    Spacer(Modifier.height(12.dp))
    val keys = SampleRules.sensorTypes.map(Int::toString) + listOf(LiveRecordingState.GPS, LiveRecordingState.ALTITUDE)
    LazyColumn(verticalArrangement = Arrangement.spacedBy(10.dp)) {
        items(keys) { key ->
            val reading = live.readings[key]
            val label = when (key) {
                LiveRecordingState.GPS -> "高德位置"
                LiveRecordingState.ALTITUDE -> "GNSS 海拔"
                else -> SampleRules.name(key.toInt())
            }
            Column(Modifier.fillMaxWidth()) {
                Text(label, fontWeight = FontWeight.Bold)
                Text(reading?.value ?: "—")
                Text("状态：${reading?.status ?: "未采集"}")
                Text("更新：${reading?.timestampEpochMs?.let(::formatTime) ?: "—"}")
            }
        }
    }
}

@Composable
private fun ColumnScope.RecordsPage(summaries: List<RecordingSummary>, onOpen: (String) -> Unit) {
    Text("历史记录", style = MaterialTheme.typography.headlineSmall)
    Spacer(Modifier.height(12.dp))
    if (summaries.isEmpty()) Text("尚无记录")
    LazyColumn(modifier = Modifier.weight(1f), verticalArrangement = Arrangement.spacedBy(8.dp)) {
        items(summaries, key = { it.id }) { record ->
            OutlinedButton(onClick = { onOpen(record.id) }, modifier = Modifier.fillMaxWidth()) {
                Column(Modifier.fillMaxWidth()) {
                    Text(record.name, fontWeight = FontWeight.Bold)
                    Text("${formatTime(record.startMs)} · ${statusLabel(record.status)} · ${record.sampleCount} 个点")
                    Text("时长：${durationText(record.startMs, record.endMs)}")
                }
            }
        }
    }
}

internal fun formatTime(epochMs: Long): String =
    SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.getDefault()).format(Date(epochMs))

internal fun durationText(startMs: Long, endMs: Long?): String =
    endMs?.let { "${((it - startMs).coerceAtLeast(0) / 1000)} 秒" } ?: "进行中"

internal fun statusLabel(status: String): String = when (status) {
    RecordingStatus.ACTIVE -> "采集中"
    RecordingStatus.STOPPED -> "已完成"
    RecordingStatus.INTERRUPTED -> "已中断"
    else -> status
}
