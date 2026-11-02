package com.sportsmonitor.logger.probe

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class SimCarrierTest {
    @Test fun mapsChinaMobileUnicomAndTelecom() {
        for (code in listOf("46000", "46002", "46004", "46007")) {
            assertEquals("CM", SimCarrier.map(code))
        }
        for (code in listOf("46001", "46006", "46009")) {
            assertEquals("CU", SimCarrier.map(code))
        }
        for (code in listOf("46003", "46005", "46011")) {
            assertEquals("CT", SimCarrier.map(code))
        }
    }

    @Test fun unmappedCodesStayEmpty() {
        for (code in listOf(null, "", "46015", "46008", "46020", "46000 ", "460001", "CMCC")) {
            assertNull(SimCarrier.map(code))
        }
        val mapped = listOf("46000", "46002", "46004", "46007", "46001", "46006", "46009", "46003", "46005", "46011")
            .map { SimCarrier.map(it) }
        assertEquals(setOf("CM", "CU", "CT"), mapped.toSet())
    }

    @Test fun permissionAndEmptyReadingsAreUnmapped() {
        assertNull(SimOperator.capture { throw SecurityException("denied") })
        assertNull(SimOperator.capture { null })
        assertNull(SimOperator.capture { "" })
        assertEquals("46000", SimOperator.capture { "46000" })
    }
}
