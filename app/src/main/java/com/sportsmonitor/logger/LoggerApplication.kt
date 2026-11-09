package com.sportsmonitor.logger

import android.app.Application
import com.sportsmonitor.logger.data.LoggerDatabase

class LoggerApplication : Application() {
    val database by lazy { LoggerDatabase.get(this) }

}
