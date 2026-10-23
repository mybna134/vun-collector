package com.sportsmonitor.logger.data

import android.hardware.Sensor
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class SampleRulesTest {
    private fun counter(id: Long, time: Long, raw: Double) = SensorSampleEntity(
        id = id, recordingId = "test", sensorType = Sensor.TYPE_STEP_COUNTER,
        timestampEpochMs = time, originalEventTimestampNs = time * 1_000_000,
        valueX = raw,
    )

    @Test fun counterStartsAtZeroAndHandlesReset() {
        val values = SampleRules.relativeSteps(listOf(
            counter(1, 1000, 100.0), counter(2, 2000, 104.0),
            counter(3, 3000, 2.0), counter(4, 4000, 5.0),
        ))
        assertEquals(0.0, values[1]!!, 0.0)
        assertEquals(4.0, values[2]!!, 0.0)
        assertEquals(4.0, values[3]!!, 0.0)
        assertEquals(7.0, values[4]!!, 0.0)
    }

    @Test fun editedCounterRecomputesLaterValues() {
        val original = listOf(counter(1, 1000, 100.0), counter(2, 2000, 104.0))
        assertEquals(4.0, SampleRules.relativeSteps(original)[2]!!, 0.0)
        assertEquals(8.0, SampleRules.relativeSteps(original.copySecond(108.0))[2]!!, 0.0)
    }

    private fun List<SensorSampleEntity>.copySecond(raw: Double) =
        listOf(first(), this[1].copy(valueX = raw, edited = true))

    @Test fun rejectsInvalidSensorAndGpsValues() {
        assertTrue(SampleRules.validateSensor(Sensor.TYPE_ACCELEROMETER, 1, 1.0, 2.0, 3.0))
        assertFalse(SampleRules.validateSensor(Sensor.TYPE_ACCELEROMETER, 1, 1.0, null, 3.0))
        assertFalse(SampleRules.validateSensor(Sensor.TYPE_STEP_COUNTER, 1, -2.0, null, null))
        assertFalse(SampleRules.validateSensor(Sensor.TYPE_STEP_DETECTOR, 1, 2.0, null, null))
        assertFalse(SampleRules.validateSensor(Sensor.TYPE_GYROSCOPE, 1, Double.NaN, 0.0, 0.0))
        assertTrue(SampleRules.validateLocation(1, 31.0, 121.0, 3.0))
        assertFalse(SampleRules.validateLocation(1, 91.0, 121.0, 3.0))
        assertFalse(SampleRules.validateLocation(1, 31.0, 181.0, 3.0))
        assertFalse(SampleRules.validateLocation(1, 31.0, 121.0, -1.0))
    }
}
