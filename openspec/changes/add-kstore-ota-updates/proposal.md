# Proposal

## Why

Users currently need to discover and install each release manually. A Kstore hosted manifest and APK can notify users when a newer version is available and let them start the existing Android OTA installation flow.

## What Changes

- Publish `update.json` and `app-release.apk` to the Kstore `VunCollector` directory during tagged release builds when the Kstore token SecretKey is configured; fail the release if publication is enabled but either upload fails.
- Include the release version and commit comment in the manifest, enable its direct link, and make reruns update the existing release files.
- Check the manifest when the Android app opens, compare its version code with the installed version, and show an update dialog with version and commit comment when newer.
- Use Android's native download and package installation APIs to download and install the APK after the user confirms.

## Capabilities

### New Capabilities

- `ota-updates`: Publish release update metadata and APKs to Kstore, detect newer versions in the app, and offer OTA installation.

### Modified Capabilities

None.

## Impact

- `.github/workflows/release.yml` and Kstore API integration.
- Android application startup and update dialog/download flow.
- Android download and package installation APIs, and Kstore manifest schema/API configuration.
- GitHub Actions SecretKey configuration for Kstore publication.
