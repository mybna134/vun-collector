package com.geetest;

import com.github.unidbg.AndroidEmulator;
import com.github.unidbg.Module;
import com.github.unidbg.arm.backend.Unicorn2Factory;
import com.github.unidbg.linux.android.AndroidEmulatorBuilder;
import com.github.unidbg.linux.android.AndroidResolver;
import com.github.unidbg.linux.android.dvm.*;

import com.github.unidbg.memory.Memory;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Paths;
import com.github.unidbg.arm.backend.Backend;
import com.github.unidbg.arm.backend.CodeHook;
import com.github.unidbg.arm.backend.UnHook;
import com.github.unidbg.arm.context.Arm64RegisterContext;
import com.github.unidbg.arm.Arm64Svc;
import com.github.unidbg.Emulator;
import unicorn.Arm64Const;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/**
 * GeeCoreUnidbg — load libgtcore.so (极验 GeeGuard 2.6.1 native), run JNI_OnLoad
 * to dump its RegisterNatives table, then call Core.getData-style methods to
 * produce a native token under explicitly modeled Android API responses.
 */
public class GeeCoreUnidbg extends AbstractJni {

    private static final File SO =
            new File(System.getProperty("gee.library", "/home/mybna134/Projects/vun-collector/app/src/main/jniLibs/arm64-v8a/libgtcore.so"));

    private AndroidEmulator emulator;
    private VM vm;
    private Module module;
    private DvmClass coreClass;

    public static void main(String[] args) throws Exception {
        GeeCoreUnidbg t = new GeeCoreUnidbg();
        try {
            t.setup();
            t.run();
        } finally {
            if (t.emulator != null) t.emulator.close();
        }
    }

    private void setup() {
        emulator = AndroidEmulatorBuilder.for64Bit()
                .setProcessName("com.collector.vun")
                .addBackendFactory(new Unicorn2Factory(true))
                .build();
        Memory memory = emulator.getMemory();
        memory.setLibraryResolver(new AndroidResolver(23));
        vm = emulator.createDalvikVM();
        vm.setVerbose(true);
        vm.setJni(this);
        // This unidbg snapshot leaves CallDoubleMethodV unimplemented. The only
        // modeled call in this collector path is PowerProfile battery capacity.
        vm.getJNIEnv().getPointer(0).setPointer(0x1d8, emulator.getSvcMemory().registerSvc(new Arm64Svc() {
            public long handle(Emulator<?> emu) {
                System.out.println("[MODEL] CallDoubleMethodV -> battery capacity 4780 mAh");
                byte[] vector = ByteBuffer.allocate(16).order(ByteOrder.LITTLE_ENDIAN).putDouble(4780).array();
                emu.getBackend().reg_write_vector(Arm64Const.UC_ARM64_REG_Q0, vector);
                return 0;
            }
        }));

        DalvikModule dm = vm.loadLibrary(SO, false);
        module = dm.getModule();
        System.out.printf("[gee] loaded %s base=0x%x size=0x%x%n", SO.getName(), module.base, module.size);
        System.out.println("[gee] calling JNI_OnLoad … RegisterNatives output follows");
        dm.callJNI_OnLoad(emulator);
        System.out.println("[gee] JNI_OnLoad returned");
        for (long rva : new long[]{0x13c74, 0xbab9c, 0xbae7c, 0x13984, 0xe7894}) {
            emulator.getBackend().hook_add_new(new CodeHook() {
                public void onAttach(UnHook hook) {}
                public void detach() {}
                public void hook(Backend backend, long address, int size, Object user) {
                    Arm64RegisterContext ctx = emulator.getContext();
                    try {
                        if (address-module.base == 0xe7894) {
                            if (ctx.getLR()-module.base == 0xaf950) {
                                byte[] input = ctx.getXPointer(1).getByteArray(0, ctx.getXInt(2));
                                String hash = java.util.HexFormat.of().formatHex(java.security.MessageDigest.getInstance("SHA-256").digest(input));
                                System.out.printf("[SH_INPUT] address=0x%x length=%d sha256=%s%n",ctx.getXLong(1)-module.base,input.length,hash);
                            }
                            return;
                        }
                        String key = ctx.getXPointer(1).getString(0);
                        System.out.printf("[FIELD] helper=0x%x caller=0x%x key=%s%n", address-module.base,ctx.getLR()-module.base,key);
                        if (key.equals("sh") && address-module.base == 0x13c74) System.out.println("[SH_VALUE] " + ctx.getXPointer(2).getString(0));
                    } catch (Throwable ignored) {}
                }
            }, module.base+rva, module.base+rva, null);
        }
    }

    // Build 属性全效填充 (BRAND/MODEL/DEVICE/...): native 层dana neán
    // 真实设备的 Build 值 (Mi 10) —— 让 brl/dev 块采集到真实数据
    String[][] BUILD_MAP = {
        {"BRAND", "Xiaomi"}, {"MANUFACTURER", "Xiaomi"}, {"MODEL", "Mi 10"},
        {"DEVICE", "umi"}, {"PRODUCT", "lineage_umi"}, {"BOARD", "kona"},
        {"HARDWARE", "qcom"}, {"FINGERPRINT", "Xiaomi/umi_global/umi:13/RKQ1.211001.001/V14.0.5.0.TJBMIXM:user/release-keys"},
        {"DISPLAY", ""}, {"VERSION.RELEASE", "13"}, {"VERSION.SDK_INT", "33"},
        {"ID", "TQ3A"}, {"TYPE", "user"}, {"TAGS", "release-keys"}, {"CPU_ABI", "arm64-v8a"},
        {"VERSION.INCREMENTAL", ""},
        {"BOOTLOADER", "unknown"},
        {"RADIO", ""},
        {"SUPPORTED_ABIS", "arm64-v8a,armeabi-v7a,armeabi"},
    };
    @Override
    public DvmObject<?> getStaticObjectField(BaseVM vm, DvmClass dvmClass, String signature) {
        System.out.printf("[gee-JNI] getStaticObjectField %s%n", signature);
        // 典型签名: android/os/Build->BRAND:Ljava/lang/String; BUILD 常量
        // Build$VERSION 内部类的字段（RELEASE/SDK_INT/CODENAME/INCREMENTAL）
        if (signature.contains("->RELEASE:")) return new StringObject(vm, "13");
        if (signature.contains("->SDK_INT:")) return DvmInteger.valueOf(vm, 33);
        if (signature.contains("->CODENAME:")) return new StringObject(vm, "REL");
        if (signature.contains("->INCREMENTAL:")) return new StringObject(vm, "gq3");
        if (signature.contains("->SECURITY_PATCH:")) return new StringObject(vm, "2026-09-05");
        for (String[] kv : BUILD_MAP) {
            if (signature.contains("->" + kv[0]) ) {
                System.out.printf("[gee-JNI] ★ Build.%s → %s%n", kv[0], kv[1]);
                return new StringObject(vm, kv[1]);
            }
        }
        if (signature.contains("SDK_INT")) return DvmInteger.valueOf(vm, 33);
        return super.getStaticObjectField(vm, dvmClass, signature);
    }

    private static final class DvmInteger { static DvmObject<?> valueOf(BaseVM vm, int v) { return vm.resolveClass("java/lang/Integer").newObject(v); } }

    // ★ Key Attestation + Class.forName + SystemProperties 一站式 hook
    @Override
    public DvmObject<?> callStaticObjectMethodV(BaseVM vm, DvmClass dvmClass, String signature, VaList vaList) {
        if (signature.contains("URLEncoder->encode")) {
            String input = String.valueOf(vaList.getObjectArg(0).getValue());
            return new StringObject(vm, java.net.URLEncoder.encode(input, java.nio.charset.StandardCharsets.UTF_8));
        }
        if (signature.contains("Utils->getSignature")) return new StringObject(vm, "VUN_SIGNATURE");
        if ("com/geetest/core/Utils->c(Landroid/content/Context;)Ljava/lang/String;".equals(signature)) {
            System.out.println("[gee-JNI] ★ Utils.c(Context) called — 返回 attestation blob");
            // p.b(0/1) | p.c(int vbState) | m.b(isGoogleRootS) | m.c(serials CSV)
            String fake = System.getProperty("gee.attestation", "1|2|0|cafebabe123");
            return new StringObject(vm, fake);
        }
        if (signature.contains("Class->forName")) {
            String cls = vaList != null ? String.valueOf(vaList.getObjectArg(0)) : "?";
            System.out.printf("[gee-JNI] Class.forName(%s) → stub%n", cls);
            return vm.resolveClass("java/lang/Class").newObject(cls);
        }
        if (signature.contains("OaidHelper")) {
            System.out.println("[gee-JNI] ★ OaidHelper.getOaid → 76a6c67e10b64a7e (gid.oaid 实证!)");
            return new StringObject(vm, "76a6c67e10b64a7e");   // MSA AAID格式
        }
        if (signature.contains("getStringForUser") || signature.contains("Settings->getString") ||
            (signature.contains("Settings") && signature.contains("getString"))) {
            String key = vaList != null ? String.valueOf(vaList.getObjectArg(1)) : "?";
            System.out.printf("[gee-JNI] ★ Settings.getString(%s) → null%n", key);
            return null;   // adb_enabled 等未读到 → auth 探针预期为空
        }
        if (signature.contains("System->getProperty")) {
            String key = vaList != null ? String.valueOf(vaList.getObjectArg(0)) : "?";
            System.out.printf("[gee-JNI] ★ System.getProperty(%s) → null (py探针路径!)%n", key);
            return new StringObject(vm, "");
        }
        if (signature.contains("SystemProperties")) {
            System.out.printf("[gee-JNI] SystemProperties.%s → ＂＂%n", signature);
            return new StringObject(vm, "");
        }
        return super.callStaticObjectMethodV(vm, dvmClass, signature, vaList);
    }

    // 大杂烩 callObjectMethodV（合并版）
    @Override
    public DvmObject<?> callObjectMethodV(BaseVM vm, DvmObject<?> dvmObject, String signature, VaList vaList) {
        String sn = signature;
        System.out.printf("[gee-JNI] callObjectMethodV: %s%n", sn);
        if (sn.contains("getApplicationLabel")) return new StringObject(vm, "Vun Collector");
        if (sn.contains("getPackageResourcePath")) return new StringObject(vm, "/data/app/com.collector.vun/base.apk");
        if (sn.contains("getPackageName")) return new StringObject(vm, "com.collector.vun");
        if (sn.contains("getFilesDir") || sn.contains("getCacheDir")) return vm.resolveClass("java/io/File").newObject(null);
        if (sn.contains("registerReceiver")) return vm.resolveClass("android/content/Intent").newObject(null);
        if (sn.contains("getDefaultDisplay")) return vm.resolveClass("android/view/Display").newObject(null);
        if (sn.contains("getResources")) return vm.resolveClass("android/content/res/Resources").newObject(null);
        if (sn.contains("getDisplayMetrics")) return vm.resolveClass("android/util/DisplayMetrics").newObject(null);
        if (sn.contains("getConnectionInfo")) return vm.resolveClass("android/net/wifi/WifiInfo").newObject(null);
        if (sn.contains("getBSSID")) return new StringObject(vm, "02:00:00:00:00:00");
        if (sn.contains("getSSID")) return new StringObject(vm, "VUN_MODELED_WIFI");
        if (sn.contains("GeeGuardConfiguration->getAppId")) return new StringObject(vm, "mhs0n2abroy5ayzs5adtslzzsk1cya6h");
        if (sn.contains("GeeGuardConfiguration->getContent") || sn.contains("GeeGuardConfiguration->getOuterInfo") || sn.contains("GeeGuardConfiguration->getExtraInfo")) return null;
        if (sn.contains("getMmsUserAgent")) return new StringObject(vm, System.getProperty("gee.mua", "VUN_MMS_SENTINEL"));
        if (sn.contains("getDeviceId")) return new StringObject(vm, "VUN_IMEI");
        if (sn.contains("getSubscriberId")) return new StringObject(vm, "VUN_IMSI");
        if (sn.contains("getSimSerialNumber")) return new StringObject(vm, "VUN_ICCID");
        if (sn.contains("getMmsUserAgent") || sn.contains("getMmsUAProfUrl")
            || sn.contains("getDeviceId") || sn.contains("getSubscriberId")
            || sn.contains("getSimSerialNumber") || sn.contains("getLine1Number")
            || sn.contains("getNetworkOperator") || sn.contains("getNetworkOperatorName")
            || sn.contains("getSimOperator") || sn.contains("getSimCountryIso")) {
            System.out.printf("[gee-JNI] Telephony %s → null/empty%n", signature);
            return new StringObject(vm, "46000");
        }
        if (sn.contains("getSharedPreferences")) {
            return vm.resolveClass("android/content/SharedPreferences").newObject(null);
        }
        if (sn.contains("SharedPreferences->edit")) {
            return vm.resolveClass("android/content/SharedPreferences$Editor").newObject(null);
        }
        if (sn.contains("Editor->put") || sn.contains("Editor->apply") || sn.contains("Editor->commit")) {
            // GEEID 写 prefs —— 直通/成功
            System.out.printf("[gee-JNI] Editor op %s → true%n", signature);
            return vm.resolveClass("java/lang/Boolean").newObject(Boolean.TRUE);
        }
        if (sn.contains("SharedPreferences->getString")) {
            // uid/ts 等 prefs 值 → 空串; n2 断为空即匹配真机样本(无持久 GeeID 就有 gid.ts=0 的 first run 行为)
            System.out.printf("[gee-JNI] prefs.getString(%s) → �∝n", signature);
            return new StringObject(vm, "");
        }
        if (sn.contains("SharedPreferences->contains")) {
            return vm.resolveClass("java/lang/Boolean").newObject(Boolean.FALSE);
        }
        if (sn.contains("getAbsolutePath") || sn.contains("getPath") || sn.contains("getName")) {
            // File 探测路径字符串
            return new StringObject(vm, "/data/user/0/com.collector.vun/files");
        }
        if (sn.contains("loadLabel") || sn.contains("loadIcon")) {
            // ResolveInfo 的 label —— 空字符串
            return new StringObject(vm, "");
        }
        if (sn.contains("addCategory") || sn.contains("setPackage")
            || sn.contains("addAction") || sn.contains("setData")) {
            // Intent 建造者链 — 返回原 intent 即可
            return dvmObject;
        }
        if (sn.contains("ApplicationInfo")) {
            return vm.resolveClass("android/content/pm/ApplicationInfo").newObject(null);
        }
        if (sn.contains("getPackageManager")) {
            return vm.resolveClass("android/content/pm/PackageManager").newObject(null);
        }
        if (sn.contains("replaceAll") || sn.contains("replace(") || sn.contains("trim")
            || sn.contains("toLowerCase") || sn.contains("toUpperCase")) {
            // String 操作 —— 默认返回原字符串
            System.out.printf("[gee-JNI] String op %s → original%n", signature);
            return dvmObject;
        }
        if (sn.contains("queryIntentActivities") || sn.contains("resolveActivity")) {
            System.out.println("[gee-JNI] ★ launcher query → empty list");
            return vm.resolveClass("java/util/ArrayList").newObject(null);
        }
        if (sn.contains("getPackageManager")) {
            return vm.resolveClass("android/content/pm/PackageManager").newObject(null);
        }
        if (sn.contains("getPackageName") || sn.contains("getFilesDir") || sn.contains("getCacheDir")) {
            return new StringObject(vm, "/data/user/0/com.collector.vun");
        }
        if (sn.contains("getContentResolver")) {
            return vm.resolveClass("android/content/ContentResolver").newObject(null);
        }
        if (sn.contains("PackageInfo")) {
            return vm.resolveClass("android/content/pm/PackageInfo").newObject(null);
        }
        if (sn.contains("getSystemService")) {
            String service = String.valueOf(vaList.getObjectArg(0).getValue());
            String cls = switch (service) {
                case "phone" -> "android/telephony/TelephonyManager";
                case "connectivity" -> "android/net/ConnectivityManager";
                case "wifi" -> "android/net/wifi/WifiManager";
                case "window" -> "android/view/WindowManager";
                case "accessibility" -> "android/view/accessibility/AccessibilityManager";
                case "sensor" -> "android/hardware/SensorManager";
                default -> "java/lang/Object";
            };
            return vm.resolveClass(cls).newObject(null);
        }
        if (sn.contains("getNetworkInfo")) {
            System.out.println("[gee-JNI] getNetworkInfo → NetworkInfo stub (onv 键活证)");
            return vm.resolveClass("android/net/NetworkInfo").newObject(null);
        }
        if (sn.contains("AccessibilityServiceList") || sn.contains("getInstalledPackages")
            || sn.contains("getRunningServices") || sn.contains("getInstalledApplications")) {
            System.out.printf("[gee-JNI] ★ listing %s → empty ArrayList%n", signature);
            return vm.resolveClass("java/util/ArrayList").newObject(null);   // empty list
        }
        if (sn.contains("iterator")) {
            return vm.resolveClass("java/util/Iterator").newObject(null);
        }
        if (sn.contains("isConnected") || sn.contains("isAvailable") || sn.contains("getState")) {
            System.out.printf("[gee-JNI] net-state %s → true (onv=1 看好)%n", signature);
            return vm.resolveClass("java/lang/Boolean").newObject(Boolean.TRUE);
        }
        if (sn.contains("hasNext") || sn.contains("next")) {
            System.out.printf("[gee-JNI] iterator %s → 就地短路%n", signature);
            return vm.resolveClass("java/lang/Boolean").newObject(Boolean.FALSE);
        }
        return super.callObjectMethodV(vm, dvmObject, signature, vaList);
    }

    @Override
    public long callStaticLongMethodV(BaseVM vm, DvmClass dvmClass, String signature, VaList vaList) {
        if (signature.contains("currentTimeMillis")) {
            long now = System.currentTimeMillis();
            System.out.printf("[gee-JNI] ★ currentTimeMillis → %d (ts 键实锚!)%n", now);
            return now;
        }
        if (signature.contains("nanoTime")) {
            return System.nanoTime();
        }
        if (signature.contains("elapsedRealtime")) {
            return java.lang.System.currentTimeMillis();
        }
        return super.callStaticLongMethodV(vm, dvmClass, signature, vaList);
    }

    @Override
    public int getIntField(BaseVM vm, DvmObject<?> dvmObject, String signature) {
        if (signature.equals("android/content/pm/ApplicationInfo->flags:I")) return Integer.getInteger("gee.flags", 0);
        System.out.printf("[gee-JNI] getIntField %s → 0%n", signature);
        return 0;
    }

    @Override
    public float getFloatField(BaseVM vm, DvmObject<?> dvmObject, String signature) {
        if (signature.toLowerCase().contains("density")) return 2.75f;
        return super.getFloatField(vm, dvmObject, signature);
    }

    @Override
    public long getLongField(BaseVM vm, DvmObject<?> dvmObject, String signature) {
        System.out.printf("[gee-JNI] getLongField %s → 0L%n", signature);
        return 0L;
    }

    @Override
    public DvmObject<?> getObjectField(BaseVM vm, DvmObject<?> dvmObject, String signature) {
        System.out.printf("[gee-JNI] getObjectField %s → empty string%n", signature);
        return new StringObject(vm, "");
    }

    // newObjectV(new Intent("...")) — launcher 探针需要的构造器
    @Override
    public DvmObject<?> newObjectV(BaseVM vm, DvmClass dvmClass, String signature, VaList vaList) {
        System.out.printf("[gee-JNI] newObjectV %s → stub%n", signature);
        if (signature.contains("Intent")) {
            return vm.resolveClass("android/content/Intent").newObject(null);
        }
        if (signature.contains("DisplayMetrics")) return vm.resolveClass("android/util/DisplayMetrics").newObject(null);
        if (signature.contains("PowerProfile")) return vm.resolveClass("com/android/internal/os/PowerProfile").newObject(null);
        if (signature.contains("ComponentName")) {
            return vm.resolveClass("android/content/ComponentName").newObject(null);
        }
        return super.newObjectV(vm, dvmClass, signature, vaList);
    }


    // SharedPreferences$Editor.apply() 是 V（void）方法
    @Override
    public void callVoidMethodV(BaseVM vm, DvmObject<?> dvmObject, String signature, VaList vaList) {
        System.out.printf("[gee-JNI] callVoidMethodV %s → ok%n", signature);
        // 全 void 直通（apply/clear/put 等）
    }

    @Override
    public double callDoubleMethod(BaseVM vm, DvmObject<?> dvmObject, String signature, VarArg vaList) {
        if (signature.contains("getBatteryCapacity")) return 4780;
        return super.callDoubleMethod(vm, dvmObject, signature, vaList);
    }

    @Override
    public int callStaticIntMethodV(BaseVM vm, DvmClass dvmClass, String signature, VaList vaList) {
        if (signature.contains("myPid") || signature.contains("myUid") || signature.contains("getPid")) {
            System.out.printf("[gee-JNI] myPid/myUid → 1234%n");
            return 1234;
        }
        if (signature.contains("Settings")) {
            String key = vaList != null ? String.valueOf(vaList.getObjectArg(1)) : "?";
            System.out.printf("[gee-JNI] Settings.getInt(%s) → 0%n", key);
            return Integer.getInteger(key.contains("adb_enabled") ? "gee.adb" : key.contains("screen_brightness") ? "gee.brightness" : "gee.setting", 0);
        }
        return super.callStaticIntMethodV(vm, dvmClass, signature, vaList);
    }

    @Override
    public int callIntMethodV(BaseVM vm, DvmObject<?> dvmObject, String signature, VaList vaList) {
        if (signature.contains("GeeGuardConfiguration->getLevel")) return 1;
        if (signature.contains("getIntExtra")) {
            String key = String.valueOf(vaList.getObjectArg(0).getValue());
            System.out.println("[BATTERY] " + key);
            if (key.equals("level")) return 89;
            if (key.equals("scale")) return 100;
            if (key.equals("voltage")) return 4413;
            if (key.equals("temperature")) return 317;
            if (key.equals("status") || key.equals("health")) return 2;
            if (key.equals("plugged")) return 1;
        }
        if (signature.contains("checkPermission") || signature.contains("checkCallingPermission")) {
            String permission = String.valueOf(vaList.getObjectArg(0).getValue());
            if (Boolean.getBoolean("gee.phonePermission") && permission.endsWith("READ_PHONE_STATE")) return 0;
            System.out.printf("[gee-JNI] ★ checkPermission %s → DENIED (-1)%n", signature);
            return -1;    // 权限拒绝 → gpa/sim 等权限相关字段无权限
        }
        return 0;
    }

    @Override
    public boolean callBooleanMethodV(BaseVM vm, DvmObject<?> dvmObject, String signature, VaList vaList) {
        if (signature.contains("GeeGuardConfiguration->isDevInfo")) return Boolean.getBoolean("gee.devInfo");
        if (signature.contains("GeeGuardConfiguration->isAlInfo")) return Boolean.getBoolean("gee.alInfo");
        if (signature.contains("exists") || signature.contains("isDirectory") || signature.contains("isFile")) {
            System.out.printf("[gee-JNI] File-state %s → true%n", signature);
            return false;   // su 等文件不存在 —— 保持 root=false
        }
        if (signature.contains("isConnected") || signature.contains("isAvailable")) {
            System.out.printf("[gee-JNI] ★ callBooleanMethodV %s → true%n", signature);
            return true;
        }
        System.out.printf("[gee-JNI] callBooleanMethodV %s → false%n", signature);
        return false;
    }

    @Override
    public boolean callStaticBooleanMethodV(BaseVM vm, DvmClass dvmClass, String signature, VaList vaList) {
        System.out.printf("[gee-JNI] static bool %s → false%n", signature);
        return false;
    }


    private void run() {
        // Try the known GeeGuard Java entry class names used by 2.6.x integration.
        String[] candidates = {
                "com/geetest/core/Core",
                "com/geetest/gradle/core/Core",
                "com/geetest/gtdis/core/Core",
        };
        for (String cn : candidates) {
            try {
                coreClass = vm.resolveClass(cn);
                System.out.println("[gee] resolved class: " + cn);

                DvmObject<?> ctx = vm.resolveClass("android/content/Context").newObject(null);
                DvmObject<?> instance = coreClass.newObject(null);
                // 试 DvmObject 调用（与 NetSecKitUnidbg 成功模式相同）
                DvmObject<?> config = vm.resolveClass("com/geetest/core/GeeGuardConfiguration").newObject(null);
                tryMethod(instance, "getData(Landroid/content/Context;Lcom/geetest/core/GeeGuardConfiguration;)Ljava/lang/String;", ctx, config);
                Files.write(Paths.get(System.getProperty("gee.dump", "/tmp/geetest-analysis/runtime.bin")), emulator.getBackend().mem_read(module.base, module.size));
                return;
            } catch (Throwable t) {
                System.out.println("[gee] " + cn + " not usable: " + t.getMessage());
            }
        }
        System.out.println("[gee] no candidate class worked — inspect RegisterNatives output above");
    }

    private void tryMethod(DvmObject<?> instance, String sig, Object... args) {
        try {
            DvmObject<?> ret = instance.callJniMethodObject(emulator, sig, args);
            String tok = ret == null ? null : String.valueOf(ret.getValue());
            System.out.printf("[gee] %s%n  => %s%n", sig, tok);
            if (tok != null && tok.startsWith("R0VFAA")) {
                System.out.println("[gee] Native token captured under modeled Android API responses");
            }
        } catch (Throwable t) {
            System.out.printf("[gee] %s failed: %s%n", sig, t.getMessage());
        }
    }
}
