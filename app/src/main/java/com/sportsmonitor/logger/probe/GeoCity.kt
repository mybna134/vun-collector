package com.sportsmonitor.logger.probe

import java.net.HttpURLConnection
import java.net.URL
import java.net.URLEncoder
import java.util.Locale

/** Amap reverse-geocode city, matching the official client's getCity() result. */
object GeoCity {
    const val radiusMeters = 200
    const val endpoint = "https://restapi.amap.com/v3/geocode/regeo"

    fun resolveCityName(city: String?, province: String?): String {
        val named = city?.trim().orEmpty()
        if (named.isNotEmpty()) return named
        val fallback = province?.trim().orEmpty()
        if (fallback.isNotEmpty()) return fallback
        throw IllegalStateException("逆地理结果没有城市名")
    }

    fun regeoUrl(key: String, longitude: Double, latitude: Double): String {
        require(key.isNotBlank()) { "请先填写高德 Web 服务 Key" }
        require(latitude in -90.0..90.0 && longitude in -180.0..180.0) { "定位坐标无效" }
        fun enc(value: String) = URLEncoder.encode(value, Charsets.UTF_8.name())
        val location = "${formatCoord(longitude)},${formatCoord(latitude)}"
        return "$endpoint?key=${enc(key.trim())}&location=${enc(location)}" +
            "&radius=$radiusMeters&extensions=base&coordsys=gps"
    }

    fun parseRegeo(body: String): ParsedRegeo {
        val root = Json.parse(body) as? Json.Obj ?: throw IllegalStateException("逆地理响应不是 JSON 对象")
        val status = root.string("status")
        if (status != "1") {
            val info = root.string("info")?.takeIf { it.isNotBlank() } ?: "逆地理失败"
            throw IllegalStateException(info)
        }
        val component = root.obj("regeocode")?.obj("addressComponent")
            ?: throw IllegalStateException("逆地理响应缺少 addressComponent")
        val city = when (val value = component.fields["city"]) {
            is Json.Str -> value.value
            is Json.Arr, null -> ""
            else -> ""
        }
        return ParsedRegeo(
            city = resolveCityName(city, component.string("province")),
            province = component.string("province").orEmpty(),
            district = when (val value = component.fields["district"]) {
                is Json.Str -> value.value
                else -> ""
            },
        )
    }

    fun exportJson(parsed: ParsedRegeo, latitude: Double, longitude: Double): String = buildString {
        append("{\"city\":").append(jsonString(parsed.city))
        append(",\"province\":").append(jsonString(parsed.province))
        append(",\"district\":").append(jsonString(parsed.district))
        append(",\"latitude\":").append(formatCoord(latitude))
        append(",\"longitude\":").append(formatCoord(longitude))
        append(",\"radiusMeters\":").append(radiusMeters)
        append(",\"coordsys\":\"gps\"}")
    }

    /** Appends u_sign only when [operator] maps to CM, CU, or CT. */
    fun attachCarrier(cityJson: String, operator: String?): String {
        val carrier = SimCarrier.map(operator) ?: return cityJson
        val code = operator ?: return cityJson
        require(cityJson.endsWith("}")) { "城市结果无效" }
        return buildString {
            append(cityJson.dropLast(1))
            append(",\"u_sign\":{\"carrier\":").append(jsonString(carrier))
            append(",\"opcode\":").append(jsonString(code))
            append("}}")
        }
    }

    fun collectionMessage(city: String, operator: String?): String {
        val carrier = SimCarrier.map(operator)
        return if (carrier == null) "已获取城市：$city · 未写入 carrier" else "已获取城市：$city · $carrier"
    }

    fun cityFromExport(json: String): String {
        val root = Json.parse(json) as? Json.Obj ?: throw IllegalStateException("城市结果无效")
        return root.string("city")?.trim()?.takeIf { it.isNotEmpty() }
            ?: throw IllegalStateException("城市结果无效")
    }

    fun lookup(key: String, longitude: Double, latitude: Double): String {
        val url = regeoUrl(key, longitude, latitude)
        val connection = (URL(url).openConnection() as HttpURLConnection).apply {
            connectTimeout = 15_000
            readTimeout = 15_000
            requestMethod = "GET"
            instanceFollowRedirects = false
        }
        try {
            val code = connection.responseCode
            val stream = if (code in 200..299) connection.inputStream else connection.errorStream
            val body = stream?.bufferedReader(Charsets.UTF_8)?.use { it.readText() }.orEmpty()
            if (code !in 200..299) throw IllegalStateException("逆地理请求失败：$code")
            return exportJson(parseRegeo(body), latitude, longitude)
        } finally {
            connection.disconnect()
        }
    }

    fun redact(text: String, key: String): String {
        val secret = key.trim()
        if (secret.isEmpty()) return text
        return text.replace(secret, "[REDACTED]").replace(URLEncoder.encode(secret, Charsets.UTF_8.name()), "[REDACTED]")
    }

    private fun formatCoord(value: Double) = String.format(Locale.US, "%.6f", value)

    internal fun jsonString(value: String): String = buildString {
        append('"')
        for (ch in value) {
            when (ch) {
                '\\' -> append("\\\\")
                '"' -> append("\\\"")
                '\n' -> append("\\n")
                '\r' -> append("\\r")
                '\t' -> append("\\t")
                else -> if (ch.code < 0x20) append("\\u%04x".format(ch.code)) else append(ch)
            }
        }
        append('"')
    }
}

data class ParsedRegeo(val city: String, val province: String, val district: String)

private sealed class Json {
    data class Obj(val fields: Map<String, Json>) : Json() {
        fun string(name: String) = (fields[name] as? Json.Str)?.value
        fun obj(name: String) = fields[name] as? Obj
    }
    data class Arr(val values: List<Json>) : Json()
    data class Str(val value: String) : Json()

    companion object {
        fun parse(text: String): Json = Parser(text).parseValue()
    }
}

private class Parser(private val text: String) {
    private var index = 0

    fun parseValue(): Json {
        skip()
        if (index >= text.length) throw IllegalStateException("逆地理响应不完整")
        val value = when (text[index]) {
            '{' -> objectValue()
            '[' -> arrayValue()
            '"' -> Json.Str(stringValue())
            't' -> literal("true")
            'f' -> literal("false")
            'n' -> literal("null")
            else -> numberValue()
        }
        skip()
        return value
    }

    private fun objectValue(): Json.Obj {
        expect('{')
        val fields = linkedMapOf<String, Json>()
        skip()
        if (peek('}')) return Json.Obj(fields)
        while (true) {
            skip()
            val key = stringValue()
            skip()
            expect(':')
            fields[key] = parseValue()
            skip()
            if (peek('}')) break
            expect(',')
        }
        return Json.Obj(fields)
    }

    private fun arrayValue(): Json.Arr {
        expect('[')
        val values = mutableListOf<Json>()
        skip()
        if (peek(']')) return Json.Arr(values)
        while (true) {
            values += parseValue()
            skip()
            if (peek(']')) break
            expect(',')
        }
        return Json.Arr(values)
    }

    private fun stringValue(): String {
        expect('"')
        val out = StringBuilder()
        while (index < text.length) {
            val ch = text[index++]
            if (ch == '"') return out.toString()
            if (ch != '\\') {
                out.append(ch)
                continue
            }
            if (index >= text.length) break
            when (val escaped = text[index++]) {
                '"', '\\', '/' -> out.append(escaped)
                'b' -> out.append('\b')
                'f' -> out.append('\u000c')
                'n' -> out.append('\n')
                'r' -> out.append('\r')
                't' -> out.append('\t')
                'u' -> {
                    val hex = text.substring(index, (index + 4).coerceAtMost(text.length))
                    if (hex.length != 4) throw IllegalStateException("逆地理响应包含无效转义")
                    out.append(hex.toInt(16).toChar())
                    index += 4
                }
                else -> throw IllegalStateException("逆地理响应包含无效转义")
            }
        }
        throw IllegalStateException("逆地理响应包含未结束的字符串")
    }

    private fun numberValue(): Json {
        val start = index
        if (peek('-')) index++
        while (index < text.length && text[index].isDigit()) index++
        if (peek('.')) {
            index++
            while (index < text.length && text[index].isDigit()) index++
        }
        if (index < text.length && (text[index] == 'e' || text[index] == 'E')) {
            index++
            if (index < text.length && (text[index] == '+' || text[index] == '-')) index++
            while (index < text.length && text[index].isDigit()) index++
        }
        if (start == index) throw IllegalStateException("逆地理响应包含无效数值")
        return Json.Str(text.substring(start, index))
    }

    private fun literal(token: String): Json {
        if (!text.startsWith(token, index)) throw IllegalStateException("逆地理响应包含无效字面量")
        index += token.length
        return Json.Str("")
    }

    private fun skip() {
        while (index < text.length && text[index].isWhitespace()) index++
    }

    private fun peek(expected: Char): Boolean {
        if (index >= text.length || text[index] != expected) return false
        index++
        return true
    }

    private fun expect(expected: Char) {
        if (!peek(expected)) throw IllegalStateException("逆地理响应格式无效")
    }
}
