package com.sportsmonitor.logger.probe

import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.TimeoutCancellationException

/** Location is best effort; cancelling generation must still stop the operation. */
internal suspend fun optionalGeeLocation(awaitLocation: suspend () -> Unit): String? = try {
    awaitLocation()
    null
} catch (error: Exception) {
    if (error is CancellationException && error !is TimeoutCancellationException) throw error
    "未获取到位置（${error.message ?: "定位不可用"}），继续生成 GeeToken"
}
