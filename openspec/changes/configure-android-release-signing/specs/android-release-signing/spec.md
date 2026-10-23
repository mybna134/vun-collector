# Spec Delta

## Purpose

This capability lets maintainers build a distributable Android release APK signed with release credentials supplied locally. It protects signing secrets and prevents a release build from being mistaken for a signed artifact when signing inputs are unavailable.

## ADDED Requirements

### Requirement: Release APK signing
The Android release build SHALL produce an APK signed with the configured release keystore and key.

#### Scenario: Build signed release APK
- **WHEN** a maintainer builds the release APK with valid release signing inputs
- **THEN** the APK is available at the documented release output location and its signature verifies against the configured key

#### Scenario: Release signing inputs are missing or invalid
- **WHEN** a maintainer requests a release APK without valid signing inputs
- **THEN** the build fails with a clear message and does not present an unsigned APK as a successful release artifact

### Requirement: Protect signing credentials
The build configuration SHALL read release credentials from local, untracked configuration and SHALL NOT embed secret values in tracked project files or the APK.

#### Scenario: Signing credentials are configured locally
- **WHEN** valid credentials are supplied through the documented local configuration
- **THEN** Gradle uses them for release signing without requiring secret values in tracked source

### Requirement: Provision and preserve the release signing identity
The release setup instructions SHALL explain how to generate a new local keystore, keep it and its credentials outside tracked files, and reuse that keystore for all future releases. The instructions SHALL disclose that builds signed with a different key cannot upgrade an installation signed with the prior key.

#### Scenario: First-time release key setup
- **WHEN** a maintainer follows the release setup instructions for a new signing identity
- **THEN** a local keystore and matching signing properties are created without adding either to tracked project files

#### Scenario: Future release uses the same key
- **WHEN** a maintainer builds a later release after initial key setup
- **THEN** the release APK is signed with the preserved keystore so it retains the same signing identity

#### Scenario: New key differs from an installed version's key
- **WHEN** a release signed with the newly generated key is installed over an app signed with another key
- **THEN** Android rejects the in-place update and the setup instructions explain that the old installation must be removed before installing the new identity
