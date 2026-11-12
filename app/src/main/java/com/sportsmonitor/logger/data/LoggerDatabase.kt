package com.sportsmonitor.logger.data

import android.content.Context
import androidx.room.Database
import androidx.room.Room
import androidx.room.RoomDatabase

@Database(
    entities = [RecordingEntity::class, SensorSampleEntity::class, LocationSampleEntity::class],
    version = 6,
    exportSchema = false,
)
abstract class LoggerDatabase : RoomDatabase() {
    abstract fun recordingDao(): RecordingDao

    companion object {
        @Volatile private var instance: LoggerDatabase? = null

        fun get(context: Context): LoggerDatabase = instance ?: synchronized(this) {
            instance ?: Room.databaseBuilder(
                context.applicationContext,
                LoggerDatabase::class.java,
                "sensor_logger.db",
            ).fallbackToDestructiveMigration(dropAllTables = true).build().also { instance = it }
        }
    }
}
