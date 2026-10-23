# Design

## Context

现有模块 app、applicationId com.sportsmonitor.logger；Gradle 9.5.1、AGP 8.13.2、Kotlin/Compose 插件 2.3.21，字节码目标 17。仅 debug/release，无 flavor 和显式 ABI split。SDK 36、NDK 29.0.14206865、CMake 3.22.1 是构建依赖。Manifest 应用名为 Vun Collector，而项目目录/Gradle 项目仍叫 SportsMonitor；附件采用产品名 Vun-Collector。

本地 release-key.jks、keystore.properties 实际存在且已被当前规则忽略，不读取其内容。项目 Git main 尚无初始提交、无 remote。README.md 当前不存在，使用 docs/github-release.md 放置发布说明。

## Goals / Non-Goals

**Goals:** 可审查的 tag-only 构建发布、严格的 CI 签名与宽松的本地无配置回退、最小文件变更和密钥隔离。

**Non-Goals:** 不升级构建工具或应用依赖，不自动创建 Secrets/真实密钥，不推送 tag，不发行 AAB，不引入 flavor；不更改现有采集功能。历史 OpenSpec 变更不自动归档。

## Decisions

### 1. 官方 action 与固定工具链

2026-10-24 通过 `gh api repos/<owner>/<repo>/releases/latest` 核实官方稳定版本：actions/checkout v7.0.1、actions/setup-java v6.1.0、gradle/actions v6.4.0。workflow 使用大版本引用 `actions/checkout@v7`、`actions/setup-java@v6`、`gradle/actions/setup-gradle@v6`；在 GitHub 托管 Ubuntu 运行，不要求旧自托管 runner。JDK 选 Temurin 17，checkout fetch-depth 0 取得完整 tag/提交历史并关闭 persist-credentials；仅 setup-gradle 负责 Gradle 缓存，避免 setup-java 再缓存同一目录。

安装项目实际 SDK/NDK/CMake 包，不依赖 runner 恰好预装某 NDK。只声明 `contents: write`。tag 输入一律经环境变量传入 shell/解析器，不在 run 中直接拼接不可信 GitHub 表达式。构建使用 --stacktrace 和 --console=plain，避免 --debug 输出环境或签名信息。

### 2. 明确版本映射边界

在 checkout 和工具准备后，用 Python 标准库完整匹配 SemVer 样式 vMAJOR.MINOR.PATCH[-prerelease][+metadata]，禁止非法标识/前导零，限制 minor、patch 为 0–99；以整数计算 `major*10000+minor*100+patch` 并验证 1–2100000000。versionName 为 tag[1:]，不删其他字符。prerelease 取语义化解析的后缀（不把 build metadata 内的连字符误判为 prerelease）。输出经校验的版本、code、预发布标志供后续步骤使用。

预发布和正式版同基础版本 code 相同，是用户要求的确定性算法；与 run_number 相比重跑不会改变版本，但不能承诺 Play 发行时的严格递增。文档明确这一点。

Gradle 使用 providers.gradleProperty，未提供时回退原 1.0/1；显式空 name、非整数/非正/超上限 code 报错，不以解析失败回退掩盖配置错误。

### 3. 签名来源按组选择，分离本地与 CI 要求

使用四个环境变量 RELEASE_STORE_FILE、RELEASE_STORE_PASSWORD、RELEASE_KEY_ALIAS、RELEASE_KEY_PASSWORD。如果环境变量组全部缺失，才读取现有本地属性；任何环境签名变量出现即选择整个环境来源，不混用本地值。有效配置创建 release signingConfig，完全无配置时生成 unsigned release，显式部分配置保持 release 验证报错；debug 不挂接 release 验证任务。

删除「本地无属性文件就必然失败」条件，更新 validateReleaseSigning 的来源判断和提示，不重写签名模块。CI 在 Gradle 前强制四个 Secrets 非空，故不会走 unsigned 分支。

workflow keystore 路径固定为 RUNNER_TEMP/release-keystore.jks。用步骤级环境变量接收四个 Secrets，umask 077，Python base64 严格解码并写临时文件；不打印、写入 GITHUB_ENV 或把密码传给 -P。签名环境只传给 Gradle 构建步骤。解码异常仅输出静态错误，不回显输入。`if: always()` 删除临时 keystore，优先在构建/验证后、发布前清理。

### 4. 唯一 APK、实际签名验证与可靠发布

执行 `./gradlew :app:assembleRelease -PversionName=... -PversionCode=... --stacktrace --console=plain`；检查 release 目录恰好一个 APK，利用 SDK apksigner 验证签名，利用 aapt 检查 applicationId、versionName/versionCode 与预期一致，随后复制为 RUNNER_TEMP/release/Vun-Collector-v<版本号>.apk。只引用这一个明确文件进行附件上传，不上传整个构建目录或 runner 临时目录。

用托管 runner 已有的 gh，GH_TOKEN 仅为发布步骤的 github.token，通过 GH_REPO 指定仓库。首次 `gh release create "$TAG" "$APK" --verify-tag --generate-notes --title "$TAG"`，预发布加 --prerelease；采用 draft 先创建附件、完成后发布，避免附件失败留下可见空 Release。重跑优先检查既有 Release：同 tag 串行化，不覆盖已发布附件；可恢复同名 draft，避免静默替换正式发布的二进制。

不选第三方发布 action，减少依赖；不创建版本 tag，--verify-tag 要求 tag 已存在。

### 5. 仓库创建和首次推送

用户已授权 gh 创建与 push；默认私有 mybna134/vun-collector。使用 gh 查询是否存在，不覆盖已有同名仓库，存在时核查归属及可见性再使用。创建仓库不带密钥或版本 tag。

本地 .git 当前只读且没有提交，必要时在 /tmp 中建立可写发布副本，明确选择项目源码、Gradle wrapper/配置、docs、openspec 与必要原 SDK assets/native libs，排除本地 .agents/.claude/.pi/.codex、构建产物、.cxx、.gradle、IDE 和签名文件。推送前检查 staged 文件名、密钥形态和 GitHub 单文件大小限制，只展示数量和路径，不输出匹配秘密正文。初始提交和 main push 在 workflow 审核批准及实现后完成；不改写/强推既有远端分支。

## Risks / Trade-offs

- [本地 unsigned release 被误当正式产物] → 文档说明，CI 强制 Secrets 并用 apksigner 验证后才发布。
- [临时文件硬终止来不及删除] → RUNNER_TEMP 私有权限、always 清理、托管临时 runner；不进入缓存或附件范围。
- [相同基础版本 code 相同] → 明确记录，跨 beta/正式版安装及商店策略由维护者决定，不偷偷切 run_number。
- [GitHub action 大版本将来更新] → 实施时按官方最新稳定大版本复核，不升级本项目 Gradle/AGP。
- [当前 sandbox socket/缓存写入受限] → 如实报告 YAML/静态检查和完整构建的区别，不声称远端构建已执行。

## Migration Plan

1. 审核批准后修改唯一 app Gradle 文件、补充 ignore、新建 workflow 和 docs/github-release.md。
2. actionlint 可用则执行，否则用 YAML 解析并检查关键字段；验证版本正常、预发布、无效与边界输入，检查签名来源完整性/缺失路径及输出范围。
3. 环境允许时执行用户给定本地 release 命令并检查版本及 fallback；用现有本地 key 验证兼容性，不打印秘密。
4. 准备不含密钥的初始提交并 push 到授权仓库；维护者自行设置四个 Secrets，再自行推送版本 tag。
5. 回滚只恢复新增/修改文件；不删除远端 Release、tag 或密钥，不更改 applicationId/签名身份。
