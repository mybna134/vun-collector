package com.sportsmonitor.logger

import android.hardware.Sensor
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.unit.dp
import com.sportsmonitor.logger.data.LocationSampleEntity
import com.sportsmonitor.logger.data.RecordingEntity
import com.sportsmonitor.logger.data.RecordingStatus
import com.sportsmonitor.logger.data.SampleRules
import com.sportsmonitor.logger.data.SensorSampleEntity

@Composable
internal fun ColumnScope.DetailPage(vm: LoggerViewModel, onBack: () -> Unit, onExport: (RecordingEntity) -> Unit, onDeleted: () -> Unit) {
    val record = vm.detail
    var rename by remember(record?.id) { mutableStateOf(false) }
    var confirmDelete by remember(record?.id) { mutableStateOf(false) }
    var editSensor by remember { mutableStateOf<SensorSampleEntity?>(null) }
    var editGps by remember { mutableStateOf<LocationSampleEntity?>(null) }
    OutlinedButton(onClick = onBack) { Text("返回列表") }
    if (record == null) {
        Text("正在加载记录…")
        return
    }
    Text(record.name, style = MaterialTheme.typography.headlineSmall)
    Text("${formatTime(record.startMs)} · ${statusLabel(record.status)} · ${durationText(record.startMs, record.endMs)}")
    if (record.note.isNotBlank()) Text("备注：${record.note}")
    Row(Modifier.horizontalScroll(rememberScrollState()), horizontalArrangement = Arrangement.spacedBy(6.dp)) {
        OutlinedButton(onClick = { rename = true }) { Text("修改记录") }
        OutlinedButton(onClick = { onExport(record) }, enabled = record.status != RecordingStatus.ACTIVE) { Text("导出 JSON") }
        OutlinedButton(onClick = { confirmDelete = true }, enabled = record.status != RecordingStatus.ACTIVE) { Text("删除") }
    }
    Spacer(Modifier.height(8.dp))
    Row(Modifier.horizontalScroll(rememberScrollState()), horizontalArrangement = Arrangement.spacedBy(6.dp)) {
        for (type in SampleRules.sensorTypes) {
            OutlinedButton(onClick = { vm.chooseSource(type) }) { Text(SampleRules.name(type)) }
        }
        OutlinedButton(onClick = { vm.chooseSource(null) }) { Text("GPS") }
    }
    Text("当前数据源：${vm.selectedSource?.let(SampleRules::name) ?: "GPS"}")
    Spacer(Modifier.height(6.dp))
    LazyColumn(modifier = Modifier.weight(1f), verticalArrangement = Arrangement.spacedBy(6.dp)) {
        if (vm.selectedSource == null) {
            items(vm.gpsPoints, key = { "g${it.id}" }) { sample ->
                OutlinedButton(onClick = { editGps = sample }, enabled = record.status != RecordingStatus.ACTIVE,
                    modifier = Modifier.fillMaxWidth()) {
                    Column(Modifier.fillMaxWidth()) {
                        Text("${formatTime(sample.timestampEpochMs)}${if (sample.edited) " · 已修改" else ""}")
                        Text("${sample.latitude}, ${sample.longitude} · ±${sample.accuracyMeters} m")
                        Text(sample.altitudeMeters?.let { "海拔 %.2f m · %s (WGS84)".format(it, sample.altitudeSource) } ?: "海拔不可用")
                    }
                }
            }
        } else {
            items(vm.sensorPoints, key = { "s${it.id}" }) { sample ->
                OutlinedButton(onClick = { editSensor = sample }, enabled = record.status != RecordingStatus.ACTIVE,
                    modifier = Modifier.fillMaxWidth()) {
                    Column(Modifier.fillMaxWidth()) {
                        Text("${formatTime(sample.timestampEpochMs)}${if (sample.edited) " · 已修改" else ""}")
                        Text("${listOfNotNull(sample.valueX, sample.valueY, sample.valueZ).joinToString(", ")} ${SampleRules.unit(sample.sensorType)}")
                        if (sample.sensorType == Sensor.TYPE_STEP_COUNTER)
                            Text("本次累计：${vm.relativeStepValues[sample.id]?.toLong() ?: 0} 步")
                    }
                }
            }
        }
        if (vm.hasMore) item { Button(onClick = vm::loadMore, enabled = !vm.loading) { Text("加载更多") } }
    }
    if (rename) RenameDialog(record, onDismiss = { rename = false }, onSave = { name, note ->
        vm.rename(record.id, name, note); rename = false
    })
    if (confirmDelete) AlertDialog(
        onDismissRequest = { confirmDelete = false }, title = { Text("删除整次记录？") },
        text = { Text("这会同时删除所有传感器和 GPS 采样点。") },
        confirmButton = { TextButton(onClick = { confirmDelete = false; vm.delete(record.id, onDeleted) }) { Text("删除") } },
        dismissButton = { TextButton(onClick = { confirmDelete = false }) { Text("取消") } },
    )
    editSensor?.let { sample -> SensorDialog(sample, onDismiss = { editSensor = null }, onSave = { t, x, y, z ->
        vm.editSensor(sample, t, x, y, z); editSensor = null
    }) }
    editGps?.let { sample -> GpsDialog(sample, onDismiss = { editGps = null }, onSave = { t, lat, lon, accuracy ->
        vm.editGps(sample, t, lat, lon, accuracy); editGps = null
    }) }
}

@Composable
private fun RenameDialog(record: RecordingEntity, onDismiss: () -> Unit, onSave: (String, String) -> Unit) {
    var name by remember(record.id) { mutableStateOf(record.name) }
    var note by remember(record.id) { mutableStateOf(record.note) }
    AlertDialog(onDismissRequest = onDismiss, title = { Text("修改记录") },
        text = {
            Column {
                OutlinedTextField(name, { name = it }, label = { Text("名称") }, singleLine = true)
                OutlinedTextField(note, { note = it }, label = { Text("备注") })
            }
        },
        confirmButton = { TextButton(onClick = { onSave(name, note) }, enabled = name.isNotBlank()) { Text("保存") } },
        dismissButton = { TextButton(onClick = onDismiss) { Text("取消") } })
}

@Composable
private fun SensorDialog(sample: SensorSampleEntity, onDismiss: () -> Unit, onSave: (Long, Double, Double?, Double?) -> Unit) {
    var time by remember(sample.id) { mutableStateOf(sample.timestampEpochMs.toString()) }
    var x by remember(sample.id) { mutableStateOf(sample.valueX.toString()) }
    var y by remember(sample.id) { mutableStateOf(sample.valueY?.toString() ?: "") }
    var z by remember(sample.id) { mutableStateOf(sample.valueZ?.toString() ?: "") }
    var error by remember { mutableStateOf<String?>(null) }
    AlertDialog(onDismissRequest = onDismiss, title = { Text("修改${SampleRules.name(sample.sensorType)}采样点") },
        text = {
            Column {
                NumberField("UTC 时间戳（毫秒）", time) { time = it }
                NumberField("值${if (SampleRules.isVector(sample.sensorType)) " X" else ""}", x) { x = it }
                if (SampleRules.isVector(sample.sensorType)) {
                    NumberField("值 Y", y) { y = it }
                    NumberField("值 Z", z) { z = it }
                }
                error?.let { Text(it, color = MaterialTheme.colorScheme.error) }
            }
        },
        confirmButton = { TextButton(onClick = {
            val t = time.toLongOrNull()
            val xv = x.toDoubleOrNull()
            val yv = if (SampleRules.isVector(sample.sensorType)) y.toDoubleOrNull() else null
            val zv = if (SampleRules.isVector(sample.sensorType)) z.toDoubleOrNull() else null
            if (t == null || xv == null || !SampleRules.validateSensor(sample.sensorType, t, xv, yv, zv))
                error = "请输入该传感器允许的时间和数值"
            else onSave(t, xv, yv, zv)
        }) { Text("保存") } },
        dismissButton = { TextButton(onClick = onDismiss) { Text("取消") } })
}

@Composable
private fun GpsDialog(sample: LocationSampleEntity, onDismiss: () -> Unit, onSave: (Long, Double, Double, Double) -> Unit) {
    var time by remember(sample.id) { mutableStateOf(sample.timestampEpochMs.toString()) }
    var lat by remember(sample.id) { mutableStateOf(sample.latitude.toString()) }
    var lon by remember(sample.id) { mutableStateOf(sample.longitude.toString()) }
    var accuracy by remember(sample.id) { mutableStateOf(sample.accuracyMeters.toString()) }
    var error by remember { mutableStateOf<String?>(null) }
    AlertDialog(onDismissRequest = onDismiss, title = { Text("修改 GPS 采样点") },
        text = {
            Column {
                NumberField("UTC 时间戳（毫秒）", time) { time = it }
                NumberField("纬度", lat) { lat = it }
                NumberField("经度", lon) { lon = it }
                NumberField("精度（米）", accuracy) { accuracy = it }
                error?.let { Text(it, color = MaterialTheme.colorScheme.error) }
            }
        },
        confirmButton = { TextButton(onClick = {
            val t = time.toLongOrNull()
            val la = lat.toDoubleOrNull()
            val lo = lon.toDoubleOrNull()
            val ac = accuracy.toDoubleOrNull()
            if (t == null || la == null || lo == null || ac == null || !SampleRules.validateLocation(t, la, lo, ac))
                error = "请输入有效时间、经纬度和精度"
            else onSave(t, la, lo, ac)
        }) { Text("保存") } },
        dismissButton = { TextButton(onClick = onDismiss) { Text("取消") } })
}

@Composable
private fun NumberField(label: String, value: String, onValueChange: (String) -> Unit) {
    OutlinedTextField(value, onValueChange, label = { Text(label) }, singleLine = true,
        keyboardOptions = KeyboardOptions(keyboardType = KeyboardType.Decimal))
}
