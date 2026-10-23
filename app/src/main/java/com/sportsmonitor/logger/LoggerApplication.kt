package com.sportsmonitor.logger

import android.app.Application
import com.sportsmonitor.logger.data.LoggerDatabase
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.withContext

class LoggerApplication : Application() {
    val database by lazy { LoggerDatabase.get(this) }

    override fun onCreate() {
        super.onCreate()
        runBlocking {
            withContext(Dispatchers.IO) {
                database.recordingDao().interruptActive(System.currentTimeMillis())
            }
        }
    }
}
