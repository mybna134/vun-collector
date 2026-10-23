package com.sportsmonitor.logger.probe

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.size
import androidx.compose.material3.Button
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

@Composable
fun ProbePage(title: String, state: ProbeState, exportPending: Boolean, available: Boolean = true,
              onGenerate: () -> Unit, onExport: () -> Unit) {
    Column(verticalArrangement = Arrangement.spacedBy(16.dp)) {
        Text(title, style = MaterialTheme.typography.headlineSmall)
        Row(horizontalArrangement = Arrangement.spacedBy(12.dp)) {
            Button(onClick = onGenerate, enabled = available && state.canGenerate) {
                if (state.phase == ProbePhase.GENERATING) {
                    CircularProgressIndicator(Modifier.size(16.dp), strokeWidth = 2.dp)
                }
                Text("生成")
            }
            OutlinedButton(onClick = onExport, enabled = available && state.canExport && !exportPending) {
                if (state.phase == ProbePhase.EXPORTING) {
                    CircularProgressIndicator(Modifier.size(16.dp), strokeWidth = 2.dp)
                }
                Text("导出")
            }
        }
    }
}
