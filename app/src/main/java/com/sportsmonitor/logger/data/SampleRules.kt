package com.sportsmonitor.logger.data

import android.hardware.Sensor

object SampleRules {
    val sensorTypes = listOf(
        Sensor.TYPE_ACCELEROMETER,
        Sensor.TYPE_STEP_COUNTER,
        Sensor.TYPE_STEP_DETECTOR,
        Sensor.TYPE_ORIENTATION,
        Sensor.TYPE_GYROSCOPE,
    )

    fun name(type: Int): String = when (type) {
        Sensor.TYPE_ACCELEROMETER -> "加速度计"
        Sensor.TYPE_STEP_COUNTER -> "累计计步"
        Sensor.TYPE_STEP_DETECTOR -> "单步事件"
        Sensor.TYPE_ORIENTATION -> "方向"
        Sensor.TYPE_GYROSCOPE -> "陀螺仪"
        else -> "未知传感器 $type"
    }

    fun unit(type: Int): String = when (type) {
        Sensor.TYPE_ACCELEROMETER -> "m/s²"
        Sensor.TYPE_GYROSCOPE -> "rad/s"
        Sensor.TYPE_ORIENTATION -> "°"
        Sensor.TYPE_STEP_COUNTER, Sensor.TYPE_STEP_DETECTOR -> "steps"
        else -> ""
    }

    fun isVector(type: Int) = type == Sensor.TYPE_ACCELEROMETER || type == Sensor.TYPE_GYROSCOPE

    fun validateSensor(type: Int, time: Long, x: Double, y: Double?, z: Double?): Boolean {
        if (type !in sensorTypes || time <= 0 || !x.isFinite()) return false
        if (isVector(type)) return y?.isFinite() == true && z?.isFinite() == true
        if (y != null || z != null) return false
        return when (type) {
            Sensor.TYPE_STEP_COUNTER -> x >= 0 && x % 1.0 == 0.0
            Sensor.TYPE_STEP_DETECTOR -> x == 1.0
            Sensor.TYPE_ORIENTATION -> x in 0.0..360.0
            else -> true
        }
    }

    fun validateLocation(time: Long, lat: Double, lon: Double, accuracy: Double): Boolean =
        time > 0 && lat.isFinite() && lat in -90.0..90.0 &&
            lon.isFinite() && lon in -180.0..180.0 &&
            accuracy.isFinite() && accuracy >= 0

    /** Values are ordered by effective timestamp, then stable database ID. */
    fun relativeSteps(samples: List<SensorSampleEntity>): Map<Long, Double> {
        val sorted = samples.filter { it.sensorType == Sensor.TYPE_STEP_COUNTER }
            .sortedWith(compareBy(SensorSampleEntity::timestampEpochMs, SensorSampleEntity::id))
        val result = LinkedHashMap<Long, Double>()
        var baseline: Double? = null
        var previous: Double? = null
        var segmentOffset = 0.0
        for (sample in sorted) {
            val value = sample.valueX
            if (baseline == null) baseline = value
            if (previous != null && value < previous) {
                segmentOffset += previous - baseline
                baseline = value
            }
            result[sample.id] = segmentOffset + value - baseline
            previous = value
        }
        return result
    }
}
