package com.sportsmonitor.logger.probe

import com.research.geetokenprobe.BoundedCommand
import com.research.geetokenprobe.DeviceCollector
import org.junit.Assert.*
import org.junit.Rule
import org.junit.Test
import org.junit.rules.TemporaryFolder
import java.util.TreeMap

class DeviceCollectorTest {
    @get:Rule val temp = TemporaryFolder()

    @Test fun signaturesMatchIndependentVectors() {
        assertEquals("73842599753b642f3f8328e4b201172b", DeviceCollector.md5Old("1700000000000"))
        assertEquals("e612e091edc6141b38cf937246e58661", DeviceCollector.tokenSign("1700000000000", "test-token", "123"))
    }

    @Test fun sortedStringMapEscapesControlCharacters() {
        val map = TreeMap<String, String>()
        map["z"] = "\"\\\n\r\t\u0001"
        map["a"] = "中文"
        assertEquals("{\"a\":\"中文\",\"z\":\"\\\"\\\\\\n\\r\\t\\u0001\"}", DeviceCollector.toJsonString(map))
    }

    @Test fun diagnosticCommandsTimeOutAndCleanUp() {
        val folder = temp.newFolder()
        assertTrue(BoundedCommand.matches(folder, 1000, "test_ok", "/bin/echo", "test_ok"))
        assertFalse(BoundedCommand.matches(folder, 1000, null, "/bin/false"))
        val start = System.nanoTime()
        assertFalse(BoundedCommand.matches(folder, 100, null, "/bin/sleep", "10"))
        assertTrue("Timed command must finish in under 2 seconds", System.nanoTime() - start < 2_000_000_000L)
        assertTrue(folder.listFiles().orEmpty().isEmpty())
    }
}
