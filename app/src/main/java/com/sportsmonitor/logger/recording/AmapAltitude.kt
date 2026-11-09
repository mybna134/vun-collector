package com.sportsmonitor.logger.recording

import com.sportsmonitor.logger.data.LocationSampleEntity

/** Keep the SDK altitude intact; NMEA only supplies independently recorded raw fields. */
internal fun withAmapAltitude(point: LocationSampleEntity, isGpsFix: Boolean, nmea: GnssAltitude): LocationSampleEntity {
    val matched = if (isGpsFix) nmea.resolve(point.originalLocationTimeMs, null) else AltitudeReading()
    return point.copy(
        altitudeSource = if (point.altitudeMeters != null) "amap_sdk" else null,
        altitudeTimestampEpochMs = if (point.altitudeMeters != null) point.originalLocationTimeMs else null,
        altitudeMslMeters = matched.mslMeters,
        geoidSeparationMeters = matched.geoidMeters,
    )
}
