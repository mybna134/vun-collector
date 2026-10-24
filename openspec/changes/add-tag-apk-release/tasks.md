# Tasks

## 1. Gradle 版本与签名输入

- [x] 1.1 在 app/build.gradle.kts 优先读取 versionName/versionCode 属性，保留默认 1.0/1；验证 0.0.0-test/1 覆盖、无属性回退及非法版本码报错。
- [x] 1.2 增加环境变量整组优先、本地 properties 次之、完全无配置允许 unsigned release 的签名分支；更新 release 验证任务，检查完整/部分/无配置与 debug 构建路径，不打印密码。
- [x] 1.3 补充 .gitignore 的 *.jks、*.keystore，验证真实本地签名文件、properties、构建目录不会进入提交；编写 docs/github-release.md 的版本算法和签名回退说明。

## 2. Tag 工作流

- [x] 2.1 创建 release.yml：仅 v* tag push、contents: write、官方最新稳定大版本 action、JDK 17 与实际 SDK/NDK/CMake、Gradle 缓存及明确日志参数；通过 actionlint 或 YAML 检查并逐项检查触发和权限。
- [x] 2.2 实现严格 tag 解析、版本映射和 prerelease 判断，以正常/预发布/非法/越界样例验证结果；Secrets 步骤缺项早失败，用 RUNNER_TEMP 私有文件还原 keystore 并 always 清理，静态检查密钥不进仓库/日志/缓存/附件。
- [x] 2.3 接入 Release APK 构建、唯一产物检查、apksigner 与版本校验、Vun-Collector 命名及 gh 自动说明/预发布发布；验证命令和附件路径只引用 APK，不主动触发真实发行或版本 tag。
- [x] 2.4 文档加入 macOS/Linux/Windows Base64 命令、四个 Secrets 的设置步骤、tag/push 示例与至少三项排查提示；交叉核对 workflow 和 Gradle 变量名，记录同基础版本预发布 code 相同限制。

## 3. 验证与授权推送

- [x] 3.1 环境允许时执行 ./gradlew assembleRelease -PversionName=0.0.0-test -PversionCode=1，检查实际 APK 版本与本地签名回退；无法执行时记录具体限制，不把静态校验当成完整构建成功。
- [ ] 3.2 用 gh 创建或核实公开 mybna134/vun-collector（用户确认保持公开）；准备必要源码/文档/SDK 文件的首次提交，检查暂存内容无密钥、无本地工具目录或构建产物，push main 且不创建/推送 tag，不覆盖既有远端历史。
- [ ] 3.3 记录新增/修改文件、执行结果、假设与未验证项，给出维护者手工配置 Secrets 及触发步骤；验证远端 main 包含 workflow，明确尚未实际运行 tag 发布。
