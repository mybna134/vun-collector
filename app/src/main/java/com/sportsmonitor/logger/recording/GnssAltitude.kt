package com.sportsmonitor.logger.recording

import kotlin.math.abs

/** Raw GGA values remain separate from the WGS84 ellipsoid altitude. */
data class GgaAltitude(val timestampMs: Long, val mslMeters: Double, val geoidMeters: Double?) {
    val ellipsoidMeters: Double? get() = geoidMeters?.let { (mslMeters + it).takeIf(Double::isFinite) }
}

object GgaParser {
    fun parse(sentence: String, timestampMs: Long): GgaAltitude? {
        if (timestampMs <= 0) return null
        val text = sentence.trimEnd('\r', '\n')
        if (!text.startsWith('$')) return null
        val star = text.indexOf('*')
        if (star < 1 || star != text.length - 3) return null
        val checksum = text.substring(star + 1).toIntOrNull(16) ?: return null
        var actual = 0
        for (ch in text.substring(1, star)) {
            if (ch.code !in 32..126) return null
            actual = actual xor ch.code
        }
        if (checksum != actual) return null
        val fields = text.substring(1, star).split(',')
        if (fields.size < 13 || !fields[0].matches(Regex("[A-Z]{2}GGA"))) return null
        if ((fields[6].toIntOrNull() ?: 0) !in 1..8 || fields[10] != "M") return null
        fun number(value: String): Double? = value.takeIf {
            it.matches(Regex("[+-]?(?:[0-9]+(?:\\.[0-9]*)?|\\.[0-9]+)"))
        }?.toDoubleOrNull()?.takeIf(Double::isFinite)
        val msl = number(fields[9]) ?: return null
        val geoid = if (fields[11].isEmpty()) null else {
            if (fields[12] != "M") return null
            number(fields[11]) ?: return null
        }
        return GgaAltitude(timestampMs, msl, geoid)
    }
}

data class AltitudeReading(
    val meters: Double? = null,
    val source: String? = null,
    val timestampMs: Long? = null,
    val mslMeters: Double? = null,
    val geoidMeters: Double? = null,
)

/** Main-thread session state. A 250 ms window excludes adjacent one-second fixes. */
class GnssAltitude(private val gpsViaJni: (Double) -> Double = NativeAltitude::accept) {
    private val sentences = ArrayDeque<GgaAltitude>()

    fun add(sentence: String, timestampMs: Long) {
        val parsed = GgaParser.parse(sentence, timestampMs) ?: return
        sentences.addLast(parsed)
        while (sentences.size > 32) sentences.removeFirst()
    }

    fun clear() = sentences.clear()

    fun resolve(locationTimeMs: Long, gpsAltitude: Double?): AltitudeReading {
        val matched = sentences.filter { abs(it.timestampMs - locationTimeMs) <= 250 }
        val complete = matched.filter { it.ellipsoidMeters != null }.minByOrNull { abs(it.timestampMs - locationTimeMs) }
        val raw = complete ?: matched.minByOrNull { abs(it.timestampMs - locationTimeMs) }
        if (complete != null) return AltitudeReading(complete.ellipsoidMeters, "nmea_gga",
            complete.timestampMs, complete.mslMeters, complete.geoidMeters)
        val fallback = gpsAltitude?.takeIf(Double::isFinite)?.let(gpsViaJni)?.takeIf(Double::isFinite)
        return AltitudeReading(fallback, if (fallback != null) "gps_jni" else null,
            if (fallback != null) locationTimeMs else null, raw?.mslMeters, raw?.geoidMeters)
    }
}

/** Stateless JNI: no global altitude buffer can leak between recording sessions. */
object NativeAltitude {
    init { System.loadLibrary("gnss_altitude") }
    external fun accept(altitudeMeters: Double): Double
}
