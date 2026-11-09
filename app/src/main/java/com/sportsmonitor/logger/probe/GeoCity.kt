package com.sportsmonitor.logger.probe

import com.sportsmonitor.logger.location.AmapFix

/** Exports the AMap Android SDK reverse-geocode result without changing its coordinates. */
object GeoCity {
    fun exportJson(fix: AmapFix): String = buildString {
        val city = fix.city?.takeIf(String::isNotBlank)
            ?: throw IllegalStateException("高德 SDK 未返回城市名")
        append("{\"city\":").append(jsonString(city))
        append(",\"province\":").append(jsonString(fix.province.orEmpty()))
        append(",\"district\":").append(jsonString(fix.district.orEmpty()))
        append(",\"latitude\":").append(fix.latitude)
        append(",\"longitude\":").append(fix.longitude)
        append(",\"coordsys\":\"GCJ02\"}")
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

private sealed class Json {
    data class Obj(val fields: Map<String, Json>) : Json() {
        fun string(name: String) = (fields[name] as? Json.Str)?.value
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