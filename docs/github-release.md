# Tag 自动发布 APK

项目为原生 Android Kotlin/Compose，应用模块 `app`，applicationId `com.sportsmonitor.logger`。工具链保持 Gradle 9.5.1、AGP 8.13.2、JDK 17，CI 显式安装 SDK 36、NDK 29.0.14206865 和 CMake 3.22.1。无 flavor 或 ABI 拆分；一个 Release APK 包含现有原生库。

## 先配置签名 Secrets

复用已有 release keystore，避免更换签名导致无法覆盖安装。不要把密钥、Base64 或密码提交到 Git。Base64 是编码，不是加密。

1. 在自己的终端生成 Base64 文本，命令不输出到日志，按系统任选一条：

   macOS：
   ```sh
   base64 -i release-key.jks | tr -d '\r\n' > keystore.base64.txt
   ```
   Linux：
   ```sh
   base64 -w 0 release-key.jks > keystore.base64.txt
   ```
   Windows PowerShell：
   ```powershell
   [IO.File]::WriteAllText("$PWD\keystore.base64.txt", [Convert]::ToBase64String([IO.File]::ReadAllBytes("$PWD\release-key.jks")))
   ```

2. 打开 GitHub 仓库 **Settings → Secrets and variables → Actions → New repository secret**，依次添加：

   | Secret | 内容 |
   | --- | --- |
   | `KEYSTORE_BASE64` | 上面生成文件中的完整 Base64 |
   | `KEYSTORE_PASSWORD` | keystore 密码 |
   | `KEY_ALIAS` | 已有签名 key 的 alias |
   | `KEY_PASSWORD` | 该 key 的密码 |

3. 保存 Secrets 后删除本地临时 `keystore.base64.txt`，原 keystore 和密码继续安全备份。不要执行 `gh auth token` 或输出环境变量来排查。

## 推送版本 tag

先确保 workflow 和代码已在目标提交中，再在本地执行：

```sh
git tag -a v1.2.3 -m "Release v1.2.3"
git push origin v1.2.3
```

预发布示例：

```sh
git tag -a v1.2.4-beta.1 -m "Release v1.2.4-beta.1"
git push origin v1.2.4-beta.1
```

只有 `push.tags: v*` 触发，不会因普通分支提交触发。`v*` 会唤起工作流，但不合法的版本字符串会在解析阶段失败。tag 应固定到发行提交，不要移动已发行的 tag。

版本规则为去掉首个 `v` 得到 versionName，versionCode 为 `major*10000 + minor*100 + patch`。例如 `v1.2.3` / `v1.2.3-beta.1` 均得到 10203，versionName 分别为 `1.2.3` / `1.2.3-beta.1`。minor/patch 必须为 0–99，code 范围 1–2100000000；预发布数字标识不能有多余前导零。支持 SemVer build metadata，版本中的预发布部分决定 prerelease 标志。

同一基础版本的 beta、rc、正式版 code 相同；该确定性算法没有为每次预发布分配新 code，不能满足应用商店每个上传必须递增的情况。需要发布下一个递增 code 时应提高基础版本。

## 工作流行为

`.github/workflows/release.yml` 使用官方 checkout v7、setup-java v6、gradle/actions setup-gradle v6，仅声明 `contents: write`。签名文件仅还原到 `$RUNNER_TEMP/release-keystore.jks`，权限 0600，签名只通过构建步骤环境输入，不写入仓库或 Gradle 命令参数。始终运行的清理步骤在发布前删除密钥；缓存只由 setup-gradle 管理，不上传临时目录。

构建只传非秘密版本参数：

```sh
./gradlew :app:assembleRelease -PversionName=1.2.3 -PversionCode=10203 \
  --no-configuration-cache --stacktrace --console=plain
```

构建后检查只有一个 APK、用 apksigner 验证签名、用 aapt 核对 applicationId 和版本，再命名为 `Vun-Collector-v1.2.3.apk`。Release 说明由 GitHub 自动生成，beta/rc 标记 prerelease。先建立草稿并上传唯一 APK，成功后发布。已发布 Release 的附件不会因重跑覆盖；未完成的草稿允许恢复上传。

## 本地 Gradle 版本与签名

`app/build.gradle.kts` 使用 `providers.gradleProperty("versionName")` / `providers.gradleProperty("versionCode")`，缺省保持 `1.0` / `1`；显式空 name 或非法 code 会失败。

签名按整组来源选择：

1. 若任意 `RELEASE_STORE_FILE`、`RELEASE_STORE_PASSWORD`、`RELEASE_KEY_ALIAS`、`RELEASE_KEY_PASSWORD` 环境变量存在，必须提供完整环境组，不从文件补齐。
2. 环境组完全不存在时，使用项目根目录未跟踪的 `keystore.properties`：`storeFile`、`storePassword`、`keyAlias`、`keyPassword`。相对路径以项目根目录为基准。
3. 环境组和本地属性文件都不存在时，本地 Release 可生成 **unsigned APK**；显式部分/无效配置会在 release 打包时报错，debug 不因缺失 release 签名受阻。

CI 必须配置全部 Secrets，并验证实际签名，绝不会将本地 unsigned 回退作为成功发布。`.gitignore` 忽略签名属性、所有 `*.jks`、`*.keystore` 及中间构建目录。

## 常见失败排查

- **tag 没有触发**：确认推送的是 `v*` tag，而非只推送 main；确认该 tag 的提交中包含 workflow，仓库 Actions 已启用。
- **Secrets 缺失 / Base64 无效**：核对四个名称及作用域，Base64 需来自原始 keystore 全部字节。不要上传证书文本或将 Base64 再编码一次；检查后删除临时编码文件。
- **签名密码、alias 错误**：本地用 `keytool -list -keystore release-key.jks` 交互检查，避免密码放进命令行；确保复用原 key，KEY_PASSWORD 不一定等于 KEYSTORE_PASSWORD。
- **非法 tag / code 越界**：检查三个版本数字、minor/patch ≤99、code >0，预发布数字标识没有前导零；`v0.0.0` 不允许，但本地 `0.0.0-test` 搭配 `-PversionCode=1` 可用于验证。
- **SDK/NDK/CMake 或依赖下载失败**：看安装步骤和 Gradle stacktrace，确认包存在、网络可访问；不随意升级 Gradle/AGP 绕过问题。
- **Release 403**：检查组织策略是否允许 GITHUB_TOKEN 写 contents，以及 Actions 是否受限制；不需要另设个人 token Secret。
- **Release 已存在**：已发布附件受保护，不覆盖；查看是否已有正确附件。若只是失败遗留草稿可重跑恢复，勿删除或移动正式 tag 规避。
- **安装报签名不一致 / 版本不可升级**：核对使用的 keystore 与旧版一致，versionCode 高于旧版要求；同基础版本预发布的 code 相同是上述算法的已知限制。

## 本次验证记录

此处记录实际检查结果。维护者尚未配置四个 Secrets 和推送 tag 前，不会执行远端签名发布。

2026-10-24 本地检查：actionlint 未安装，已使用 YAML 解析及所有 run 块的 `bash -n` 检查；触发条件、权限和 action 大版本引用检查通过。tag 解析器的 13 组正常、预发布、非法和边界输入通过；使用人工测试字节验证缺失 Secrets/非法 Base64 拒绝、0600 临时权限及清理成功，未使用真实密钥。

完整 Gradle 构建未完成：用户指定的命令在 wrapper 写入只读用户缓存的 `.zip.lck` 时失败；改用 `/tmp/vun-collector-gradle` 与已有 Gradle 可执行文件后，仍在启动阶段因 `Could not determine a usable wildcard IP for this machine` 失败。以上静态/隔离检查不等同完整 Android 构建，远端 tag 签名发行尚未触发。

抽取实际 Gradle 版本与签名输入代码，以 Kotlin 编译并执行 12 组隔离用例，默认/覆盖/非法参数、无签名、本地配置、环境优先、部分配置检查通过；仅使用人工文件及占位密码。静态确认验证任务只挂接 packageRelease，不挂接 debug。这些检查未验证完整 Gradle DSL 或真实签名打包。
