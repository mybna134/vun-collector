package com.sportsmonitor.logger.probe

import android.content.Context
import android.os.Build
import android.os.Process
import dalvik.system.InMemoryDexClassLoader
import java.io.File
import java.nio.ByteBuffer

object GeeSdk {
    private var loader: ClassLoader? = null
    const val APP_ID = "mhs0n2abroy5ayzs5adtslzzsk1cya6h"

    fun unavailableReason(context: Context): String? = when {
        !Process.is64Bit() || "arm64-v8a" !in Build.SUPPORTED_ABIS -> "GeeToken 生成仅支持 arm64 进程"
        !File(context.applicationInfo.nativeLibraryDir, "libgtcore.so").isFile -> "原始 libgtcore.so 未安装，无法生成"
        else -> null
    }

    @Synchronized
    fun generate(context: Context): String {
        check(unavailableReason(context) == null) { unavailableReason(context).orEmpty() }
        val sdk = loader ?: InMemoryDexClassLoader(
            arrayOf(ByteBuffer.wrap(context.assets.open("geetest/classes4.dex").use { it.readBytes() })),
            context.applicationInfo.nativeLibraryDir,
            Context::class.java.classLoader,
        ).also { loader = it }
        val core = Class.forName("com.geetest.core.Core", true, sdk)
        val result = run {
            val configClass = sdk.loadClass("com.geetest.core.GeeGuardConfiguration")
            val builderClass = sdk.loadClass("com.geetest.core.GeeGuardConfiguration\$Builder")
            val builder = builderClass.getDeclaredConstructor().newInstance()
            builderClass.getMethod("setAppId", String::class.java).invoke(builder, APP_ID)
            builderClass.getMethod("setDevInfo", Boolean::class.javaPrimitiveType).invoke(builder, true)
            builderClass.getMethod("setAlInfo", Boolean::class.javaPrimitiveType).invoke(builder, true)
            builderClass.getMethod("setLevel", Int::class.javaPrimitiveType).invoke(builder, 1)
            val config = builderClass.getMethod("build").invoke(builder)
            core.getMethod("getData", Context::class.java, configClass).invoke(null, context, config)
        }
        return requireNotNull(result as? String) { "SDK 返回空 Token" }.also {
            require(it.isNotEmpty()) { "SDK 返回空 Token" }
        }
    }
}
