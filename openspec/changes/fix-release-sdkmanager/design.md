# Design

## Context

See `proposal.md` for the failure and intended behavior. The release job runs on GitHub-hosted Ubuntu runners with a preinstalled Android SDK, but the command-line tools directory is not guaranteed to be on the shell `PATH`.

## Goals / Non-Goals

**Goals:**

- Resolve `sdkmanager` from the runner's Android SDK installation without relying on PATH setup.
- Pass the SDK root explicitly so the selected tool targets the same installation.
- Keep the declared package versions and release workflow order unchanged.

**Non-Goals:**

- Adding a new Android SDK setup action.
- Changing Gradle, AGP, signing, or release publication behavior.

## Decisions

- Read `ANDROID_SDK_ROOT` first and fall back to `ANDROID_HOME`, matching current Android tooling conventions.
- Check the common `cmdline-tools/latest/bin`, `cmdline-tools/bin`, and legacy `tools/bin` locations, then use a bounded `find` fallback under the SDK root. This handles image layout changes while failing with an explicit GitHub Actions error if no executable is present.
- Invoke the resolved absolute path with `--sdk_root`; changing PATH globally is unnecessary and could mask which SDK installation was used.

## Risks / Trade-offs

- [Risk] A future runner may store command-line tools outside the SDK root → the step emits a clear error and the runner image can be updated without silently using another installation.
- [Risk] `ANDROID_SDK_ROOT` and `ANDROID_HOME` could disagree → the documented precedence is explicit, and the selected root is logged only as a non-secret path.

## Migration Plan

Commit the workflow change, push it to the default branch, and rerun the failed tag workflow with `gh run watch`. Rollback is a one-file revert if the runner image exposes an incompatible SDK layout.
