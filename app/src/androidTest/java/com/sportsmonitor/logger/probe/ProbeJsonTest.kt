package com.sportsmonitor.logger.probe

import org.json.JSONObject
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ProbeJsonTest {
    @Test fun pathFilteringPreservesNestedObservations() {
        val input = """{"ts":"root","sign":"root","data":{"gid":{"sign":"g","ts":"t","uid":""},"dev":{"app":"x","ven":"x","loc":{"st":1,"loc":{"lat":"1","lon":"2","ts":"when"}}},"test":{"sh":"","nested":{"ts":"keep"}}}}"""
        val result = JSONObject(ProbeJson.sanitizeGeePlain(input))
        assertFalse(result.has("ts"))
        assertFalse(result.has("sign"))
        val data = result.getJSONObject("data")
        assertEquals("g", data.getJSONObject("gid").getString("sign"))
        assertEquals("t", data.getJSONObject("gid").getString("ts"))
        assertTrue(data.getJSONObject("gid").has("uid"))
        assertFalse(data.getJSONObject("dev").has("app"))
        assertEquals("when", data.getJSONObject("dev").getJSONObject("loc").getJSONObject("loc").getString("ts"))
        assertTrue(data.getJSONObject("test").has("sh"))
        assertEquals("keep", data.getJSONObject("test").getJSONObject("nested").getString("ts"))
    }

    @Test fun locationValidationRequiresSdkFixAndCoordinates() {
        ProbeJson.requireValidLocation("""{"data":{"dev":{"loc":{"st":1,"loc":{"lat":"37.9","lon":"114.5"}}}}}""")
        for (invalid in listOf(
            "{}",
            """{"data":{"dev":{"loc":{"st":0}}}}""",
            """{"data":{"dev":{"loc":{"st":1,"loc":{"lat":"bad","lon":"1"}}}}}"""
        )) {
            try {
                ProbeJson.requireValidLocation(invalid)
                throw AssertionError("expected invalid location")
            } catch (_: IllegalStateException) { }
        }
    }
}
