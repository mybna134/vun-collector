# Proposal

## Why

The Android app currently has no release signing configuration, so Gradle cannot produce a release APK signed with a release key. Add a secure, reproducible way to supply signing credentials and build a signed release APK for distribution.

## What Changes

- Generate a new Android release keystore locally and configure the `release` build type to sign APKs with it.
- Keep the generated keystore and signing properties outside tracked files; document how to preserve and reuse this key for future releases.
- Document the Gradle command and output location for the signed APK, and fail clearly when release signing inputs are missing.

## Capabilities

### New Capabilities

- `android-release-signing`: Provision a local release keystore, protect its credentials, and produce a signed release APK.

### Modified Capabilities

None.

## Impact

- `app/build.gradle.kts` release build configuration.
- Local keystore generation, `keystore.properties`, and ignore rules to keep the new signing identity and its credentials untracked.
- Android build documentation and the release APK under `app/build/outputs/apk/release/`.

**Compatibility:** The newly generated key establishes a new app signing identity. Versions installed with a different signing key cannot be upgraded in place; future releases must preserve and reuse this keystore.
