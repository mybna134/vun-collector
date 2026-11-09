# Design

## Context

The existing `.github/workflows/release.yml` runs for version tags, derives a monotonically increasing Android `versionCode` from the tag, verifies the signed APK, and publishes it as a GitHub Release asset. The Android client is a Kotlin application. Kstore's official docs define directory lookup as `POST /api/v1/file/search/path`, folder creation as `POST /api/v1/file/create`, upload as multipart `POST https://upload.kstore.space/upload/{folderId}?access_token=...` (`file` field), deletion as `POST /api/v1/file/delete`, and direct-link enablement as `POST /api/v1/file/direct` with `fileId` and `isDirect=1`. Authenticated API calls use `access_token`; successful JSON responses contain `status: 200` (upload instead returns `code: 0`).

## Goals / Non-Goals

**Goals:**
- Add Kstore publication as an optional step in the existing release job, with configured publication failures failing the job.
- Keep the update manifest as a small, versioned contract consumed by Android.
- Prompt only for a strictly newer `versionCode` and use Android's native APIs for the user-approved install.

**Non-Goals:**
- Replace GitHub Releases or alter tag/version derivation.
- Force installation, silently download, or bypass Android's package installation confirmation.
- Support rollback/downgrade through the update prompt.

## Decisions

1. **Use the verified release APK as the Kstore payload.** Upload the same APK already signature/version checked by the release job, named `app-release.apk`; this avoids producing a second artifact that could differ from the GitHub release.
2. **Treat the Kstore SecretKey as an opt-in switch.** When absent, skip the Kstore step and preserve today's GitHub-only release behavior. When present, validate the credential and fail on any manifest create/update, direct-link enablement, or APK upload failure. Use an idempotent create-or-update operation so workflow reruns converge on the latest release.
3. **Store the generated `versionCode` and commit comment in `update.json`.** Compare numeric codes on device rather than tag strings, which may contain prerelease/metadata suffixes. Build the comment from the triggering commit message and encode it as JSON. Keep Kstore-specific URL and request details in workflow configuration/code rather than shipping the token in the app.
4. **Check during app startup without blocking the main thread.** Fetch and parse asynchronously; network, HTTP, and malformed-manifest failures are non-fatal. Present the Compose dialog only if the activity is still in a suitable foreground state and the remote code is newer.
5. **Use Android's native download and package installation APIs after explicit confirmation.** The confirm action downloads from the public APK direct link and launches the standard package installer through a content URI. Cancel only dismisses the prompt. Preserve Android's normal user-authorized install behavior.
6. **Use documented Kstore REST endpoints and make replacement explicit.** Find/create `VunCollector/`, locate existing named files by absolute path, delete them, upload replacements, then enable direct links. The token is passed only to the Kstore API and never logged. Upload the APK before the manifest so the manifest is the final publication step.

## Risks / Trade-offs

- [Kstore API endpoint or direct-link semantics differ from assumptions] → Verify the official API methods and response format before implementing the release step; fail with sanitized diagnostics.
- [A release manifest becomes visible before its APK is available] → Upload the APK first, then publish/update the manifest as the final commit point, or otherwise ensure clients cannot observe an incomplete release.
- [Commit message contains newlines or non-ASCII text] → Generate JSON with a JSON encoder and preserve a bounded UTF-8 comment.
- [Startup network check delays or interrupts the UI] → Run it asynchronously, apply request timeouts, and suppress prompts when the screen is no longer active.
- [Android blocks package installation] → Request/manage the platform install permission as required and allow the user to complete the standard system confirmation.

## Migration Plan

1. Add the Kstore SecretKey to GitHub Actions secrets; releases without it continue on GitHub only.
2. Deploy the client update check and verify a test manifest can be fetched and parsed.
3. Enable Kstore publication by configuring the secret, then publish a tagged release and verify `update.json` and `app-release.apk` are directly downloadable.
4. Roll back by removing the Kstore secret to stop publication; a client rollback removes the startup prompt and OTA integration. Existing GitHub release artifacts remain available.
