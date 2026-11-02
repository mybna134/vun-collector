package com.sportsmonitor.logger.probe

import android.content.Context
import android.telephony.TelephonyManager

/** Default SIM operator code. Permission and missing-radio failures are an empty reading. */
internal object SimOperator {
    fun read(context: Context): String? = capture {
        val telephony = context.getSystemService(Context.TELEPHONY_SERVICE) as? TelephonyManager
        telephony?.simOperator
    }

    fun capture(query: () -> String?): String? = try {
        query()?.takeIf { it.isNotEmpty() }
    } catch (_: SecurityException) {
        null
    }
}
