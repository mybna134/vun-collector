# Tasks

## 1. Kstore release publication

- [x] 1.1 Confirm Kstore authentication, create/update, JSON upload, and direct-link API operations from the official API documentation; record the verified endpoint contract and confirm no credential is printed in logs.
- [ ] 1.2 Extend the release workflow to create/update `update.json` with version code and commit comment, enable its direct link, and upload the verified APK as `app-release.apk`; verify with a configured Kstore test credential and ensure each API failure fails the job.
- [x] 1.3 Make Kstore publication conditional on the token SecretKey and verify a release without that secret follows the existing GitHub-only publication path.

## 2. Android update check and install

- [x] 2.1 Implement typed manifest fetching/parsing and numeric version comparison; verify newer/equal/older and malformed manifest cases with focused tests.
- [x] 2.2 Invoke the update check asynchronously on app open and show the `更新` Compose dialog with version code, commit comment, confirm, and cancel; verify startup remains usable on network failure and no prompt appears unless the remote version is newer.
- [x] 2.3 Wire confirmation to Android's native download and package installation APIs with the Kstore APK direct link; verify cancel starts no download and confirm starts download/install.

## 3. End-to-end release verification

- [x] 3.1 Document the required GitHub Actions SecretKey name and Kstore setup in the release documentation; verify the documented setup matches the workflow.
- [ ] 3.2 Run the relevant Android checks and validate a tagged release against Kstore, confirming the manifest, direct APK URL, version comparison, and failure behavior end to end.
