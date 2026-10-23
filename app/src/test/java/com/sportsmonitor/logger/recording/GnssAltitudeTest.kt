package com.sportsmonitor.logger.recording

import org.junit.Assert.*
import org.junit.Test

class GnssAltitudeTest {
    private fun sentence(msl: String = "100.0", geoid: String = "-20.0", quality: String = "1", unit: String = "M"): String {
        val body = "GNGGA,120000.00,3700.0,N,11400.0,E,$quality,12,1.0,$msl,$unit,$geoid,M,,"
        val sum = body.fold(0) { acc, ch -> acc xor ch.code }
        return "$" + body + "*" + "%02X".format(sum)
    }
    @Test fun ggaConvertsDatumAndOverridesGps() {
        val tracker = GnssAltitude { error("JNI should not be called") }
        tracker.add(sentence(), 1000)
        val result = tracker.resolve(1000, 50.0)
        assertEquals(80.0, result.meters!!, 0.0)
        assertEquals("nmea_gga", result.source)
        assertEquals(-20.0, result.geoidMeters!!, 0.0)
    }
    @Test fun missingGeoidFallsBackWithoutInventingZero() {
        var called = false
        val tracker = GnssAltitude { called = true; it }
        tracker.add(sentence(geoid = ""), 1000)
        val result = tracker.resolve(1000, -3.0)
        assertTrue(called)
        assertEquals(-3.0, result.meters!!, 0.0)
        assertEquals("gps_jni", result.source)
        assertEquals(100.0, result.mslMeters!!, 0.0)
        assertNull(result.geoidMeters)
    }
    @Test fun rejectsInvalidSentences() {
        for (text in listOf(sentence().dropLast(1) + "Z", sentence(quality = "0"),
            sentence(msl = "NaN"), sentence(msl = "12x"), sentence(unit = "F"), sentence(geoid = "Infinity"),
            sentence().substringBefore('*'))) assertNull(GgaParser.parse(text, 1000))
    }
    @Test fun staleAndClearedSamplesCannotOverrideGps() {
        val tracker = GnssAltitude { it }
        tracker.add(sentence(), 1000)
        assertEquals("gps_jni", tracker.resolve(2000, 0.0).source)
        tracker.clear()
        assertEquals("gps_jni", tracker.resolve(1000, 0.0).source)
    }
    @Test fun unavailableAltitudeIsNullButZeroIsValid() {
        val tracker = GnssAltitude { it }
        assertNull(tracker.resolve(1000, null).meters)
        assertNull(tracker.resolve(1000, Double.NaN).source)
        assertEquals(0.0, tracker.resolve(1000, 0.0).meters!!, 0.0)
        val invalidNative = GnssAltitude { Double.NaN }
        assertNull(invalidNative.resolve(1000, 5.0).timestampMs)
    }
    @Test fun lateGgaCanResolvePendingFixAndCompleteSentenceWins() {
        val tracker = GnssAltitude { it }
        tracker.add(sentence(geoid = ""), 1000)
        tracker.add(sentence(msl = "120"), 1050)
        assertEquals(100.0, tracker.resolve(1000, 10.0).meters!!, 0.0)
        assertEquals(1050L, tracker.resolve(1000, 10.0).timestampMs)
    }
}
