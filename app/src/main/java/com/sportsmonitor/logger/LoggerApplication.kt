package com.sportsmonitor.logger

import android.app.Application
import com.sportsmonitor.logger.data.LoggerDatabase
import com.sportsmonitor.logger.auth.ApiSigner
import com.sportsmonitor.logger.auth.AuthApi
import com.sportsmonitor.logger.auth.AuthRepository
import com.sportsmonitor.logger.auth.AuthSessionStore

class LoggerApplication : Application() {
    val database by lazy { LoggerDatabase.get(this) }
    val auth by lazy {
        val key = String(java.util.Base64.getDecoder().decode(BuildConfig.REQUEST_SIGNING_KEY_BASE64), Charsets.UTF_8)
        AuthRepository(AuthSessionStore(this), AuthApi(ApiSigner(key)))
    }

}
