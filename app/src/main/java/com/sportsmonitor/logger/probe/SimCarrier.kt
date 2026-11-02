package com.sportsmonitor.logger.probe

/** Exact MCC+MNC match from GeeGuard's Java carrier switch. Unmapped codes stay empty. */
internal object SimCarrier {
    fun map(operator: String?): String? = when (operator) {
        "46000", "46002", "46004", "46007" -> "CM"
        "46001", "46006", "46009" -> "CU"
        "46003", "46005", "46011" -> "CT"
        else -> null
    }
}
