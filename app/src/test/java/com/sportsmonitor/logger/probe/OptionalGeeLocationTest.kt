package com.sportsmonitor.logger.probe

import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.delay
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.withTimeout
import org.junit.Assert.*
import org.junit.Test

class OptionalGeeLocationTest {
    @Test fun timeoutAndPermissionDenialOnlyWarn() = runBlocking {
        assertNotNull(optionalGeeLocation { withTimeout(1) { delay(100) } })
        assertNotNull(optionalGeeLocation { throw SecurityException("未授权") })
        assertNull(optionalGeeLocation { })
    }

    @Test fun cancellationStillStopsGeneration() {
        assertThrows(CancellationException::class.java) {
            runBlocking { optionalGeeLocation { throw CancellationException("cancel") } }
        }
    }

    @Test fun missingSdkLocationStillAllowsExport() {
        for (json in listOf("{}", """{"data":{"dev":{"loc":{"st":0}}}}""")) {
            assertNotNull(ProbeJson.locationWarning(json))
            val session = ProbeSession()
            assertTrue(session.beginGeneration(ProbeTool.GEE))
            session.completeGeneration(ProbeTool.GEE, json)
            val export = requireNotNull(session.beginExport(ProbeTool.GEE))
            val output = java.io.ByteArrayOutputStream()
            export.writeTo(output)
            assertEquals(json, output.toString("UTF-8"))
        }
    }
}
