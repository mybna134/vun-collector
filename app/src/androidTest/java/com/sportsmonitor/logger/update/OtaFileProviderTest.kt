package com.sportsmonitor.logger.update

import android.content.Context
import androidx.core.content.FileProvider
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import java.io.File
import org.junit.Assert.assertEquals
import org.junit.Assert.assertThrows
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class OtaFileProviderTest {
    @Test fun downloadedApkCanBeSharedButOtherCacheFilesCannot() {
        val context = ApplicationProvider.getApplicationContext<Context>()
        val authority = "${context.packageName}.ota_updates"
        val directory = File(context.cacheDir, "ota-updates").apply { mkdirs() }
        val apk = File(directory, "provider-test.apk")
        try {
            apk.writeText("test apk contents")
            val uri = FileProvider.getUriForFile(context, authority, apk)
            assertEquals("content", uri.scheme)
            assertEquals("test apk contents", context.contentResolver.openInputStream(uri)!!.bufferedReader().use { it.readText() })
            assertThrows(IllegalArgumentException::class.java) {
                FileProvider.getUriForFile(context, authority, File(context.cacheDir, "private.json"))
            }
        } finally {
            apk.delete()
        }
    }
}
