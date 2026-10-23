package com.sportsmonitor.logger.probe

import org.junit.Assert.*
import org.junit.Test
import java.io.ByteArrayOutputStream
import java.io.IOException
import java.io.OutputStream
import java.util.concurrent.CountDownLatch
import java.util.concurrent.Executors

class ProbeSessionTest {
    @Test fun failedReplacementInvalidatesOldResultAndKeepsOtherTool() {
        val session = ProbeSession()
        assertFalse(session.gee.value.canExport)
        assertNull(session.beginExport(ProbeTool.GEE))
        assertTrue(session.beginGeneration(ProbeTool.GEE))
        assertFalse(session.beginGeneration(ProbeTool.GEE))
        assertFalse(session.gee.value.canExport)
        session.completeGeneration(ProbeTool.GEE, "A", 1)
        assertTrue(session.gee.value.canExport)
        assertTrue(session.beginGeneration(ProbeTool.DEVICE))
        session.completeGeneration(ProbeTool.DEVICE, "device", 2)
        assertTrue(session.beginGeneration(ProbeTool.GEE))
        assertNull(session.gee.value.result)
        session.failGeneration(ProbeTool.GEE)
        assertFalse(session.gee.value.canExport)
        assertNull(session.beginExport(ProbeTool.GEE))
        assertEquals("device", session.device.value.result!!.json)
        assertTrue(session.beginGeneration(ProbeTool.GEE))
        session.completeGeneration(ProbeTool.GEE, "B", 3)
        assertEquals("B", session.beginExport(ProbeTool.GEE)!!.result.json)
        assertNull(ProbeSession().gee.value.result)
    }

    @Test fun exportSnapshotBindsToolVersionAndPreventsOverlapUntilClose() {
        val session = ProbeSession()
        session.beginGeneration(ProbeTool.GEE)
        session.completeGeneration(ProbeTool.GEE, "gee", 12)
        val export = session.beginExport(ProbeTool.GEE)!!
        assertEquals("gee_plain_12.json", export.name)
        assertFalse(session.beginGeneration(ProbeTool.GEE))
        assertNull(session.beginExport(ProbeTool.GEE))
        assertTrue(session.beginGeneration(ProbeTool.DEVICE))
        session.completeGeneration(ProbeTool.DEVICE, "device", 13)
        assertNull(session.beginExport(ProbeTool.DEVICE))
        assertEquals(export, session.claimExport())
        assertNull(session.claimExport())
        export.writeTo(object : ByteArrayOutputStream() {
            override fun close() {
                assertEquals(export, session.exporting.value)
                assertFalse(session.gee.value.canExport)
                super.close()
            }
        })
        session.completeExport(export)
        assertEquals("gee", session.gee.value.result!!.json)
        assertTrue(session.gee.value.canExport)
        assertEquals("device_info_13.json", session.beginExport(ProbeTool.DEVICE)!!.name)
    }

    @Test fun cancelAndWriteFailuresAllowSameLatestResultToRetry() {
        val session = ProbeSession()
        session.beginGeneration(ProbeTool.DEVICE)
        session.completeGeneration(ProbeTool.DEVICE, "{\"hm\":\"中文\"}", 42)
        val cancelled = session.beginExport(ProbeTool.DEVICE)!!
        session.claimExport()
        session.completeExport(cancelled)
        assertTrue(session.device.value.canExport)
        for (closeFailure in listOf(false, true)) {
            val export = session.beginExport(ProbeTool.DEVICE)!!
            session.claimExport()
            val output = object : OutputStream() {
                override fun write(value: Int) { if (!closeFailure) throw IOException("write failed") }
                override fun close() { if (closeFailure) throw IOException("close failed") }
            }
            try { assertThrows(IOException::class.java) { export.writeTo(output) } }
            finally { session.completeExport(export) }
            assertTrue(session.device.value.canExport)
            assertEquals(cancelled.result, session.device.value.result)
        }
        val output = ByteArrayOutputStream()
        session.beginExport(ProbeTool.DEVICE)!!.writeTo(output)
        assertEquals("{\"hm\":\"中文\"}", output.toString("UTF-8"))
    }

    @Test fun concurrentExportAttemptsOnlyClaimOneSnapshot() {
        val session = ProbeSession()
        session.beginGeneration(ProbeTool.DEVICE)
        session.completeGeneration(ProbeTool.DEVICE, "{}", 1)
        val pool = Executors.newFixedThreadPool(4)
        try {
            val start = CountDownLatch(1)
            val attempts = (1..12).map { pool.submit<ProbeExport?> { start.await(); session.beginExport(ProbeTool.DEVICE) } }
            start.countDown()
            assertEquals(1, attempts.count { it.get() != null })
        } finally { pool.shutdownNow() }
    }
}
