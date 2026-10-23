# Tasks

## 1. Configure local release signing

- [x] 1.1 Add release signing configuration in `app/build.gradle.kts` that reads the documented local properties, keeps debug tasks independent, and reports missing or invalid inputs clearly; verify `./gradlew assembleDebug` succeeds without release credentials and `./gradlew assembleRelease` fails clearly when they are absent.
- [x] 1.2 Ignore `release-key.jks` and document one-time key generation, safe backup, future key reuse, build and verification steps, and the upgrade compatibility impact in `README.md`; verify the ignore rules and documented commands and output path are correct. (`git check-ignore` is unavailable because this workspace has no Git repository metadata; the ignore entries were checked directly.)

## 2. Build and verify signed release artifact

- [x] 2.1 Generate `release-key.jks` with alias `sports-monitor-release`, create owner-only `keystore.properties` with high-entropy local passwords, and keep both files ignored; verify the keystore opens with the expected alias, both files have mode 600, and both paths appear in `.gitignore`. (No Git metadata is present in this workspace, so tracked status cannot be queried.)
- [x] 2.2 Build using `./gradlew assembleRelease`; verify `app/build/outputs/apk/release/app-release.apk` exists, `apksigner verify` confirms its signature, and no signing passwords are embedded in the APK.
