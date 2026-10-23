package com.sportsmonitor.logger.data

import android.content.Context
import androidx.room.Database
import androidx.room.Room
import androidx.room.RoomDatabase
import androidx.room.migration.Migration
import androidx.sqlite.db.SupportSQLiteDatabase

@Database(
    entities = [RecordingEntity::class, SensorSampleEntity::class, LocationSampleEntity::class],
    version = 2,
    exportSchema = false,
)
abstract class LoggerDatabase : RoomDatabase() {
    abstract fun recordingDao(): RecordingDao

    companion object {
        val MIGRATION_1_2 = object : Migration(1, 2) {
            override fun migrate(db: SupportSQLiteDatabase) {
                db.execSQL("ALTER TABLE location_samples ADD COLUMN altitudeMeters REAL")
                db.execSQL("ALTER TABLE location_samples ADD COLUMN altitudeSource TEXT")
                db.execSQL("ALTER TABLE location_samples ADD COLUMN altitudeTimestampEpochMs INTEGER")
                db.execSQL("ALTER TABLE location_samples ADD COLUMN altitudeMslMeters REAL")
                db.execSQL("ALTER TABLE location_samples ADD COLUMN geoidSeparationMeters REAL")
            }
        }

        @Volatile private var instance: LoggerDatabase? = null

        fun get(context: Context): LoggerDatabase = instance ?: synchronized(this) {
            instance ?: Room.databaseBuilder(
                context.applicationContext,
                LoggerDatabase::class.java,
                "sensor_logger.db",
            ).addMigrations(MIGRATION_1_2).build().also { instance = it }
        }
    }
}
