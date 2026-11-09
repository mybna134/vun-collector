# OTA Updates

## Requirements

### Requirement: Publish update metadata and APK to Kstore
The release workflow MUST publish the current release's `update.json` and `app-release.apk` to the Kstore `VunCollector` directory when the Kstore token SecretKey is configured. The manifest MUST identify the current version code and commit comment and MUST have its direct link enabled. If the SecretKey is configured and either metadata or APK upload fails, the release workflow MUST fail. If the SecretKey is absent, the existing GitHub release flow MUST complete without Kstore publication.

#### Scenario: Kstore publishing is configured
- **WHEN** a tagged release build produces and verifies the APK
- **THEN** the workflow creates or updates `update.json` and uploads the APK as `app-release.apk` to `VunCollector`
- **AND** the published manifest direct link is enabled

#### Scenario: Configured Kstore upload fails
- **WHEN** Kstore publication is configured but metadata or APK upload fails
- **THEN** the workflow fails and reports the failed publication step

#### Scenario: Kstore publishing is not configured
- **WHEN** the release workflow has no Kstore token SecretKey
- **THEN** it skips Kstore publication and continues the current GitHub release process

### Requirement: Check for updates when the app opens
The Android app MUST fetch and parse the Kstore `update.json` when it opens. It MUST compare the manifest version code with the installed app version code and MUST show an update dialog only when the manifest version is newer. The dialog title MUST be `更新` and its content MUST show the offered version code and commit comment, with confirm and cancel actions.

#### Scenario: A newer version is available
- **WHEN** the manifest is valid and its version code is greater than the installed version code
- **THEN** the app presents a dialog titled `更新` showing the version code and commit comment
- **AND** the dialog offers confirm and cancel actions

#### Scenario: No newer version is available
- **WHEN** the manifest version code is equal to or lower than the installed version code
- **THEN** the app does not show the update dialog

#### Scenario: Update check cannot be completed
- **WHEN** the manifest cannot be fetched or parsed
- **THEN** the app continues opening without interrupting the user with an update dialog

### Requirement: Download and install after confirmation
When the user confirms an available update, the app MUST use Android's native download and package installation APIs to download `app-release.apk` and initiate the Android installation flow. Canceling the dialog MUST leave the installed app unchanged and MUST NOT start a download.

#### Scenario: User confirms update
- **WHEN** the user confirms the update dialog
- **THEN** the app downloads the published APK using Android APIs and starts the platform installation flow

#### Scenario: User cancels update
- **WHEN** the user cancels the update dialog
- **THEN** the app dismisses the dialog without downloading or installing the APK
