package com.sportsmonitor.logger.update

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class OtaUpdatesTest {
    private val manifest = """{"versionCode":10203,"commitComment":"fix release","apkUrl":"https://download.example/app-release.apk"}"""

    @Test fun newerVersionProducesUpdate() {
        assertEquals(10203, OtaUpdates.parseManifest(manifest, 10202)?.versionCode)
    }

    @Test fun equalOrOlderVersionIsIgnored() {
        assertNull(OtaUpdates.parseManifest(manifest, 10203))
        assertNull(OtaUpdates.parseManifest(manifest, 10204))
    }

    @Test fun invalidManifestIsRejected() {
        assertNull(OtaUpdates.parseManifest("{}", 1))
        assertNull(OtaUpdates.parseManifest("not-json", 1))
        assertNull(OtaUpdates.parseManifest("""{"versionCode":2,"apkUrl":"http://example/app.apk"}""", 1))
    }
}
