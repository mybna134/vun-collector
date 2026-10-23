package com.sportsmonitor.logger.probe

import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import java.io.OutputStream

enum class ProbeTool(val prefix: String) { GEE("gee_plain_"), DEVICE("device_info_") }
enum class ProbePhase { IDLE, GENERATING, READY, EXPORTING, ERROR }
data class ProbeResult(val version: Long, val generatedAt: Long, val json: String)
data class ProbeState(
    val phase: ProbePhase = ProbePhase.IDLE,
    val result: ProbeResult? = null,
) {
    val busy get() = phase == ProbePhase.GENERATING || phase == ProbePhase.EXPORTING
    val canGenerate get() = !busy
    val canExport get() = phase == ProbePhase.READY && result != null
}
data class ProbeExport(val tool: ProbeTool, val result: ProbeResult) {
    val name get() = "${tool.prefix}${result.generatedAt}.json"
    fun writeTo(output: OutputStream) {
        output.buffered().use { it.write(result.json.toByteArray(Charsets.UTF_8)) }
    }
}

/** Process-local results and one export transaction, including the document picker. */
class ProbeSession {
    private val mutableGee = MutableStateFlow(ProbeState())
    private val mutableDevice = MutableStateFlow(ProbeState())
    private val mutableExport = MutableStateFlow<ProbeExport?>(null)
    val gee = mutableGee.asStateFlow()
    val device = mutableDevice.asStateFlow()
    val exporting = mutableExport.asStateFlow()
    private var version = 0L
    private var writing = false
    private fun state(tool: ProbeTool) = if (tool == ProbeTool.GEE) mutableGee else mutableDevice

    @Synchronized fun beginGeneration(tool: ProbeTool): Boolean {
        if (!state(tool).value.canGenerate) return false
        state(tool).value = ProbeState(ProbePhase.GENERATING)
        return true
    }

    @Synchronized fun completeGeneration(tool: ProbeTool, json: String, now: Long = System.currentTimeMillis()) {
        check(state(tool).value.phase == ProbePhase.GENERATING)
        state(tool).value = ProbeState(ProbePhase.READY, ProbeResult(++version, now, json))
    }

    @Synchronized fun failGeneration(tool: ProbeTool) {
        check(state(tool).value.phase == ProbePhase.GENERATING)
        state(tool).value = ProbeState(ProbePhase.ERROR)
    }

    @Synchronized fun beginExport(tool: ProbeTool): ProbeExport? {
        val current = state(tool).value
        if (mutableExport.value != null || !current.canExport) return null
        return ProbeExport(tool, requireNotNull(current.result)).also {
            mutableExport.value = it
            state(tool).value = current.copy(phase = ProbePhase.EXPORTING)
        }
    }

    /** Claim the picker callback once; duplicate callbacks cannot start another write. */
    @Synchronized fun claimExport(): ProbeExport? {
        if (writing) return null
        val pending = mutableExport.value ?: return null
        writing = true
        return pending
    }

    @Synchronized fun completeExport(export: ProbeExport) {
        if (mutableExport.value != export) return
        state(export.tool).value = ProbeState(ProbePhase.READY, export.result)
        mutableExport.value = null
        writing = false
    }
}
