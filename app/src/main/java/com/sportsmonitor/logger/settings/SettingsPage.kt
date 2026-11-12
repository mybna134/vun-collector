package com.sportsmonitor.logger.settings

import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Row
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
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.compose.ui.Alignment
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.launch

/** 设置页面：显示当前 AMAP Android Key，并允许在运行时保存新 Key。 */
@Composable
fun SettingsPage(
    vm: SettingsViewModel,
    modifier: Modifier = Modifier,
    checkingForUpdates: Boolean = false,
    onCheckForUpdates: () -> Unit,
) {
    val currentKey = vm.currentKey()
    var inputKey by remember { mutableStateOf("") }
    var message by remember { mutableStateOf("") }
    val session by vm.session.collectAsState()
    var uploadUsername by rememberSaveable { mutableStateOf("") }
    var uploadMessage by remember { mutableStateOf("") }
    var loggingIn by remember { mutableStateOf(false) }
    val scope = rememberCoroutineScope()
    LaunchedEffect(session?.uid) {
        uploadUsername = session?.username.orEmpty()
        uploadMessage = ""
    }

    Column(
        modifier = modifier.verticalScroll(rememberScrollState()).padding(16.dp),
        verticalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        Text("设置", style = MaterialTheme.typography.headlineSmall)
        Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp),
            verticalAlignment = Alignment.CenterVertically) {
            TextField(
                value = session?.username ?: uploadUsername,
                onValueChange = { uploadUsername = it; uploadMessage = "" },
                label = { Text("用户名") },
                singleLine = true,
                enabled = session == null && !loggingIn,
                modifier = Modifier.weight(1f),
            )
            Button(enabled = !loggingIn, onClick = {
                if (session != null) {
                    try {
                        vm.logout()
                        uploadUsername = ""
                    } catch (error: Exception) { uploadMessage = error.message ?: "退出失败" }
                } else {
                    loggingIn = true
                    uploadMessage = ""
                    scope.launch {
                        try { vm.login(uploadUsername) }
                        catch (cancelled: CancellationException) { throw cancelled }
                        catch (error: Exception) { uploadMessage = error.message ?: "登录失败，请重试" }
                        finally { loggingIn = false }
                    }
                }
            }) { Text(if (loggingIn) "登录中…" else if (session == null) "登录" else "退出登录") }
        }
        Text(session?.let { "已登录 · UID ${it.uid}" } ?: "登录后可上传运动记录")
        if (uploadMessage.isNotEmpty()) Text(uploadMessage)
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
        Row(Modifier.fillMaxWidth()) {
            Button(
                onClick = onCheckForUpdates,
                enabled = !checkingForUpdates,
                modifier = Modifier.fillMaxWidth(),
            ) {
                Text(if (checkingForUpdates) "正在检查更新…" else "检查更新")
            }
        }
        if (message.isNotEmpty()) {
            Text(message)
        }
    }
}
