package com.sportsmonitor.logger.data

import android.content.Context
import androidx.room.Database
import androidx.room.Room
import androidx.room.RoomDatabase
import androidx.room.migration.Migration
import androidx.sqlite.db.SupportSQLiteDatabase

@Database(
    entities = [RecordingEntity::class, SensorSampleEntity::class, LocationSampleEntity::class],
    version = 4,
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
        val MIGRATION_2_3 = object : Migration(2, 3) {
            override fun migrate(db: SupportSQLiteDatabase) {
                db.execSQL("ALTER TABLE location_samples ADD COLUMN source TEXT NOT NULL DEFAULT 'android_gps'")
                db.execSQL("ALTER TABLE location_samples ADD COLUMN coordsys TEXT NOT NULL DEFAULT 'WGS84'")
            }
        }
        val MIGRATION_3_4 = object : Migration(3, 4) {
            override fun migrate(db: SupportSQLiteDatabase) {
                db.execSQL("ALTER TABLE location_samples ADD COLUMN speedMps REAL")
                db.execSQL("ALTER TABLE location_samples ADD COLUMN bearingDeg REAL")
            }
        }

        @Volatile private var instance: LoggerDatabase? = null

        fun get(context: Context): LoggerDatabase = instance ?: synchronized(this) {
            instance ?: Room.databaseBuilder(
                context.applicationContext,
                LoggerDatabase::class.java,
                "sensor_logger.db",
            ).addMigrations(MIGRATION_1_2, MIGRATION_2_3, MIGRATION_3_4).build().also { instance = it }
        }
    }
}
