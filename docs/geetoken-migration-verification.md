# GeeToken / DeviceInfo 迁移验收

2026-10-10 验证，变更 `migrate-geetoken-deviceinfo-probe`。

## 构建和静态检查

最终代码执行以下任务，整体 BUILD SUCCESSFUL：

```sh
./gradlew --offline :app:testDebugUnitTest :app:lintDebug \
  :app:connectedDebugAndroidTest :app:assembleDebug :app:assembleRelease
```

当前执行环境将 Gradle 用户缓存复制至可写 `/tmp/sports-probe-gradle`，实际额外传入 `--gradle-user-home /tmp/sports-probe-gradle`；项目正常构建不依赖此目录。

- 单元测试：21 项通过，0 失败。覆盖运动采样规则、海拔、运动 JSON 完整性、Token 边界校验、JSON 字符串格式化、设备 MD5 独立向量、root 命令超时、存档和导出失败。
- lintDebug：0 Error/Fatal。既有 SDK/依赖版本等警告未作为本次迁移扩展升级。
- Debug 和 signed Release 均构建成功。Release 使用现有本地签名配置，apksigner 验证通过（v2，1 个签名者）。
- Release APK 内原 DEX、gtcore 的 SHA-256 与来源文件一致，保留 arm64-v8a、armeabi-v7a、x86、x86_64 的原 GNSS 库。构建配置没有引用 reverse 的绝对路径。

## 设备集成验证

| 设备 | 系统 / 进程 | 结果 |
| --- | --- | --- |
| Mi 10 | Android 16 / API 36，arm64-v8a，64 位，4096 字节页 | 14 项通过，0 失败、0 跳过 |
| Pixel_8 AVD | Android 14 / API 34，x86_64 | 11 项通过，0 失败；3 项真实 Token 生成相关测试按架构限制跳过 |

arm64 原 SDK 在平台父加载器 + InMemoryDexClassLoader 中成功加载 gtcore，验证无配置与带配置生成、可选权限未授权时的生成、真实 Token 解密和原始明文存档。代表性无配置/带配置样本分别为 3044 / 4236 字符；Token 长度随环境变化，不作为固定契约。

另从源分析材料的真实 HAR 提取一份 Token，在临时文件中将本项目解密输出与独立 Python AES 实现的明文 SHA-256 比较，3371 字节完全一致。测试未把真实设备标识或 Token 加入源码仓库。

集成测试检查了 DeviceInfo 的 hm 报告、22 个字符串字段、未登录空字段、应用版本、稳定 DeviceId、已登录 tokenSign 辅助能力；验证采集自动保存、剪贴板内容、报告导出字节一致性。

UI 自动化覆盖 Tab 切换、Activity 重建后报告和状态保持，以及 GeeToken 页面生成→解密→复制→存档。通过导出 ViewModel 的实际输出流验证完整历史与报告导出、取消导出保留源文件；系统选择器由 CreateDocument 注册到 Activity，测试使用文件 URI 校验回调后写入流程，未逐一自动操作各厂商文件提供者界面。

运动服务在两个新增 Tab 操作期间继续接收真实加速度采样，返回后仍可停止并导出 v2 JSON。既有数据库编辑、删除、旧数据库迁移、海拔和 SHA-256 导出测试通过；本次没有修改数据库结构。

## 限制

原 gtcore 仅有 arm64 且 ELF 段为 4 KB 对齐，16 KB 页设备尚未验收。Android 16 在 debug 应用首次启动时可能显示原 SDK 引起的开发者兼容性提示；UI 自动化只关闭这条信息提示，不在测试中自动授予 root 权限。

Activity 配置重建和 Tab 切换保留未存档结果，进程终止后的未存档结果恢复不属于此次契约；已保存文件在应用重启后保留。旧 Probe 沙箱的历史及 DeviceId 不自动转入当前应用。
