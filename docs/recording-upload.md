# 登录与上传运动记录

在 Settings 输入用户名，在输入框右侧点击“登录”。客户端先调用 `POST /login`，验证登录响应签名，再调用 `POST /tokens/refresh` 换取 access token。登录成功后显示用户名与数字 UID。点击右侧“退出登录”会立即清除本地用户信息、access token、refresh-token 和用于保存会话的加密密钥；之后可输入用户名重新登录。

运动数据采集的“历史记录”中，每条已停止或中断的记录右侧有“上传”按钮。未登录时按钮不可用。点击“上传”先弹出模板名称 Dialog，输入值和占位提示均默认为 `用户名-yyyy-MM-dd-录制时长`，例如 `alice-2026-11-11-60`；日期为记录开始时的本地日期，时长为结束与开始时间差的整秒数，可修改后确认或取消；名称去除首尾空白后须为 1–255 个字符，不能包含控制字符。模板名称独立于 JSON 内部的 recording.name，不修改本地记录名称。上传复用本地完整 JSON 导出，包含 schemaVersion 2、记录信息、sensorSamples、gpsSamples 和 sha256，不需要先手动导出文件。临时 JSON 在上传结束后清理，本地记录保留。

生产 Base URL：`https://api.myb666.ccwu.cc`。登录、Token 兑换及上传都附带 `tick` 和 `sign`。签名按后端文档使用 HMAC-SHA256，包含实际请求体 SHA256、完整 Authorization SHA256、方法、pathname、规范化查询串和毫秒 tick。登录响应也要校验 HMAC 和五分钟时间窗口。客户端不会打印或在 UI 展示 Token 或签名密钥。

上传调用 `PUT /route-templates`，携带 `Authorization: Bearer <access_token>`；请求体包含模板名称和 JSON 对象：

```json
{"routeTemplateName":"北京路线","route-template-json":{"schemaVersion":2,"recording":{},"sensorSamples":{},"gpsSamples":[]}}
```

不发送 username、uid，也不依赖上传响应中的用户字段。上传成功和失败均通过 Snackbar 提示；历史记录弹层内显示 Snackbar，避免被弹层遮挡。不在记录列表内保留结果文字。上传请求上限为 100 MB（100,000,000 字节），包含模板名称、JSON 及包装字段，按 UTF-8 计算，超过时在本地拦截。请求体按块发送，不整包加载到内存，同一时间只允许一次上传。

access token 过期前自动串行刷新并保存轮换后的 refresh-token；refresh-token 无效时清除会话并要求重新登录。退出期间仍在进行的刷新不会恢复旧登录。明确收到 invalid_access_token 时可以刷新后再上传一次；超时、签名失败和其他错误不自动重试，避免重复创建模板。

会话通过 Android Keystore 的 AES-GCM 密钥加密后保存在应用私有偏好设置中，重启后恢复。退出仅删除本机登录信息；后端目前没有撤销会话接口。

## 构建签名配置

Debug 只从项目根目录 `.request-signing-key` 读取本地 Key（原始值，不带额外换行；文件已加入 .gitignore）。Release 只读取构建环境变量 `REQUEST_SIGNING_KEY`，GitHub Actions 从同名 Secret 注入；不会回退到 Debug 的本地 Key。两种构建分别生成自己的客户端配置。密钥值须与对应后端 Worker 一致，按 UTF-8 使用，不做 hex 解码。

GitHub Actions 发布必须配置 `REQUEST_SIGNING_KEY` Secret。此值只在构建步骤注入；运行时内置于 APK，不能视为用户身份凭证。登录按当前 API 设计只输入用户名，不使用密码。

API 约定以 `../vun-collector-backend/docs/API.md` 为准。下载会重新序列化 JSON，因此 sha256 字段保留的是原导出值，不代表重新排版后的下载文件字节摘要。
