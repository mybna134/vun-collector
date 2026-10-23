# Design

## Context

See proposal.md for motivation. The Android project uses Kotlin Gradle build scripts. Its `release` build type currently has minification disabled and no signing configuration. The root `.gitignore` already excludes machine-local `local.properties`, and the README documents the debug build only. No signing properties or keystore were found in the repository.

## Goals / Non-Goals

**Goals:**
- Generate a new release keystore locally and sign release APKs with that signing identity.
- Keep the keystore and its passwords outside tracked files.
- Keep debug builds usable without release credentials while preventing a release build from silently succeeding unsigned.
- Document key generation, safe preservation, build, output, signature verification, and the installation compatibility boundary.

**Non-Goals:**
- Configure Play App Signing, CI secret storage, or app bundle publishing.
- Change debug APK signing or release minification behavior.

## Decisions

- Generate a new `release-key.jks` at the project root with the `sports-monitor-release` alias. Add the keystore and root `keystore.properties` to `.gitignore`; keep the properties file owner-readable only and never print its secrets. The properties file supplies the keystore path, store password, key alias, and key password to Gradle.
- Require release signing values when `assembleRelease` is requested, with a clear error naming the missing local configuration; do not make debug tasks depend on release credentials. This prevents an unsigned release artifact from being mistaken for a distributable APK while preserving ordinary development builds.
- Use Android Gradle Plugin's release signing support and its standard APK output location (`app/build/outputs/apk/release/app-release.apk`). Document the command and a signature verification step in the README. No signing dependency is needed.
- Generate a high-entropy local password for the new key and store it only in the ignored properties file. Keep the keystore and properties file together in a secure backup because future releases must reuse them.

## Risks / Trade-offs

- [The new signing identity cannot update installations signed with another key] → Disclose that a prior installation must be uninstalled before installing this release, then preserve and reuse the new key for all later releases.
- [A compromised or lost keystore can expose or strand app releases] → Keep the key and generated passwords in ignored, owner-only local files and back them up securely; never copy or print the secrets.
- [Gradle configuration may be evaluated for non-release tasks] → Validate signing inputs only on the release assembly path so debug builds remain independent.

## Migration Plan

1. Generate `release-key.jks` and create the ignored, owner-only `keystore.properties` file with its signing values; back up both files securely.
2. Run `./gradlew assembleRelease`, then verify the resulting APK signature. If replacing an installation signed with a different key, remove that installation before installing this APK.
3. Roll back by removing the release signing configuration and local files; no app data or schema migration is involved.
