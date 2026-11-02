package com.sportsmonitor.logger.probe

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Test

class GeoCityTest {
    @Test fun cityFieldIsTheUploadName() {
        val parsed = GeoCity.parseRegeo(
            """{"status":"1","regeocode":{"addressComponent":{"province":"河北省","city":"石家庄市","district":"长安区"}}}""",
        )
        assertEquals("石家庄市", parsed.city)
        assertEquals("河北省", parsed.province)
        val json = GeoCity.exportJson(parsed, 37.974026, 114.516498)
        assertTrue(json.contains("\"city\":\"石家庄市\""))
        assertTrue(json.contains("\"coordsys\":\"gps\""))
        assertTrue(json.contains("\"radiusMeters\":200"))
        assertTrue(json.contains("\"latitude\":37.974026"))
        assertTrue(json.contains("\"longitude\":114.516498"))
        assertEquals("石家庄市", GeoCity.cityFromExport(json))
    }

    @Test fun mappedOperatorAppendsUSignInsideTheCityJson() {
        val parsed = GeoCity.parseRegeo(
            """{"status":"1","regeocode":{"addressComponent":{"province":"河北省","city":"石家庄市","district":"长安区"}}}""",
        )
        val city = GeoCity.exportJson(parsed, 37.974026, 114.516498)
        val json = GeoCity.attachCarrier(city, "46000")
        assertEquals(
            city.dropLast(1) + ",\"u_sign\":{\"carrier\":\"CM\",\"opcode\":\"46000\"}}",
            json,
        )
        assertEquals("石家庄市", GeoCity.cityFromExport(json))
        assertEquals("已获取城市：石家庄市 · CM", GeoCity.collectionMessage("石家庄市", "46000"))
        assertTrue(GeoCity.collectionMessage("石家庄市", "46006").contains("CU"))
        assertTrue(GeoCity.collectionMessage("石家庄市", "46011").contains("CT"))
        for (forbidden in listOf("client_type", "\"op\"", "\"car\"", "Unknown")) {
            assertFalse(json.contains(forbidden))
        }
    }

    @Test fun unmappedOperatorOmitsUSign() {
        val parsed = GeoCity.parseRegeo(
            """{"status":"1","regeocode":{"addressComponent":{"province":"河北省","city":"石家庄市","district":"长安区"}}}""",
        )
        val city = GeoCity.exportJson(parsed, 37.974026, 114.516498)
        for (operator in listOf("46015", "46008", null, "", "46000 ")) {
            val json = GeoCity.attachCarrier(city, operator)
            assertEquals(city, json)
            assertFalse(json.contains("u_sign"))
            assertFalse(json.contains("opcode"))
            assertEquals("石家庄市", GeoCity.cityFromExport(json))
            assertEquals("已获取城市：石家庄市 · 未写入 carrier", GeoCity.collectionMessage("石家庄市", operator))
        }
    }

    @Test fun emptyCityArrayFallsBackToProvince() {
        val parsed = GeoCity.parseRegeo(
            """{"status":"1","regeocode":{"addressComponent":{"province":"北京市","city":[],"district":"东城区"}}}""",
        )
        assertEquals("北京市", parsed.city)
    }

    @Test fun failedStatusDoesNotRequireTheKey() {
        val error = assertThrows(IllegalStateException::class.java) {
            GeoCity.parseRegeo("""{"status":"0","info":"INVALID_USER_KEY"}""")
        }
        assertEquals("INVALID_USER_KEY", error.message)
    }

    @Test fun requestUsesGpsRadiusAndEncodedKey() {
        val url = GeoCity.regeoUrl("a&b", 114.5, 38.0)
        assertTrue(url.startsWith(GeoCity.endpoint))
        assertTrue(url.contains("key=a%26b"))
        assertTrue(url.contains("location=114.500000%2C38.000000"))
        assertTrue(url.contains("radius=200"))
        assertTrue(url.contains("coordsys=gps"))
        assertFalse(url.contains("a&b"))
        assertEquals("失败 [REDACTED]", GeoCity.redact("失败 a&b", "a&b"))
    }
}
