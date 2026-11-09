package com.sportsmonitor.logger.settings

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.material3.Button
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.material3.TextField
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

/** 设置页面：显示当前 AMAP Android Key，并允许在运行时保存新 Key。 */
@Composable
fun SettingsPage(
    vm: SettingsViewModel,
    modifier: Modifier = Modifier,
) {
    val currentKey = vm.currentKey()
    var inputKey by remember { mutableStateOf("") }
    var message by remember { mutableStateOf("") }

    Column(
        modifier = modifier.padding(16.dp),
        verticalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        Text("设置", style = MaterialTheme.typography.headlineSmall)
        Text("当前 AMAP Android Key：")
        Text(currentKey.takeIf { it.isNotBlank() } ?: "未配置")
        Spacer(Modifier.height(4.dp))
        TextField(
            value = inputKey,
            onValueChange = { inputKey = it },
            label = { Text("输入新 Key") },
            singleLine = true,
            modifier = Modifier.fillMaxWidth()
        )
        Button(
            onClick = {
                val trimmed = inputKey.trim()
                message = if (trimmed.isBlank()) {
                    "Key 不能为空"
                } else if (vm.saveKey(trimmed)) {
                    "已保存，立即生效"
                } else {
                    "保存失败"
                }
            },
            modifier = Modifier.fillMaxWidth()
        ) {
            Text("保存")
        }
        if (message.isNotEmpty()) {
            Text(message)
        }
    }
}
