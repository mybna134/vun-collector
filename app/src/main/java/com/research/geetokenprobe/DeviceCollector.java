package com.research.geetokenprobe;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.provider.Settings;
import android.util.DisplayMetrics;

import java.io.File;
import java.io.OutputStreamWriter;
import java.io.FileOutputStream;
import java.security.MessageDigest;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.UUID;

/**
 * DeviceCollector — 完整复刻 iydsj (com.zjwh.android_wh_physicalfitness) App
 * 登录/headerSign 所需的设备信息 22 字段采集。
 *
 * 逐字段对齐关系（源码:  utils/HttpUtil.java + utils/CacheDataUtils.OooO0o()
 *          + utils/o00oO0o.java + utils/OAidHelper.java）:
 *
 *   osType        固定 "0"                     (HttpUtil.java:108)
 *   DeviceId      deviceOAID(持久化) 或 md5Old  (CacheDataUtils.OooO0o0 / OAidHelper.init)
 *   osVersion     Build.VERSION.RELEASE       (o00oO0o.OooOOOo)
 *   deviceName    MANUFACTURER(去重)+MODEL    (o00oO0o.OooOOO0 — 首字母大写)
 *   IMEI          固定 ""                      (HttpUtil.java:112)
 *   logicPixel    width/density + "x" + h/dp   (o00oO0o.OooOOO)
 *   physicPixel   widthPx + "x" + heightPx    (o00oO0o.OooOOo)
 *   androidId     固定 ""                      (HttpUtil.java:115)
 *   blMac         固定 ""                      (o00oO0o.OooOO0O)
 *   wifiMac       固定 ""                      (o00oO0o.OooOOOO)
 *   cpuModel      SUPPORTED_ABIS[0]           (o00oO0o.OooOO0o)
 *   isRoot        0/1 (六重检测)               (o00oO0o.OooOo)
 *   appUpdateTime PackageInfo.lastUpdateTime  (o00oO0o.OooOO0)
 *   appInstallTime PackageInfo.firstInstallTime(o00oO0o.OooO)
 *   appVersion    PackageInfo.versionName      (o00oO0o.OooOo0 = ydsj "7.3.80")
 *   CustomDeviceId 固定 ""                     (HttpUtil.java:124)
 *   nonce         UUID.randomUUID().toString()
 *   timeStamp     System.currentTimeMillis()  (毫秒)
 *   uid           "-1"(未登录) 或数字
 *   token         ""(未登录) 或 token
 *   tokenSign     MD5("timeStamp="+ts+"&token="+token
 *                        +"&uid="+uid+"&wh2016_swcampus")  ←Settings md5_sign_salt
 *
 * DeviceId 的 md5Old 兜底 (o00O0OO.OoooOo0):
 *   hex(MD5( ts-string + "05df15504f394eab8dd3ab8180006a83" ))  ← R.string.md5_key
 *   首次生成后持久化（ydsj 用 DataStore，probe 用 SharedPreferences 等价）
 */
public final class DeviceCollector {

    /** ydsj res/values/strings.xml: string/md5_key (提取自正版 APK 0x7f13038d) */
    public static final String MD5_KEY = "05df15504f394eab8dd3ab8180006a83";
    /** ydsj res/values/strings.xml: string/md5_sign_salt (0x7f13038e) — tokenSign 盐 */
    public static final String MD5_SIGN_SALT = "&wh2016_swcampus";
    /** probe 侧 DeviceId 持久化 prefs（对齐 ydsj DataStore deviceOAID 行为） */
    private static final String PREFS = "ydsj_device";
    private static final String PREF_DEVICE_ID = "deviceOAID";

    private DeviceCollector() {}

    /* ─────────── 字段级采集（全部复刻 ydsj o00oO0o.java 语义） ─────────── */

    public static String osVersion() {
        String r = Build.VERSION.RELEASE;
        return r == null ? "" : r;
    }

    public static String deviceName() {
        try {
            String mfr = Build.MANUFACTURER == null ? "" : Build.MANUFACTURER;
            String model = Build.MODEL == null ? "" : Build.MODEL;
            String out;
            if (model.startsWith(mfr)) {
                out = upperFirst(model).trim();
            } else {
                out = (upperFirst(mfr) + " " + model).trim();
            }
            return out;
        } catch (Throwable t) { return ""; }
    }

    private static String upperFirst(String s) {
        if (s == null || s.length() == 0) return "";
        char c = s.charAt(0);
        return Character.isUpperCase(c) ? s : (Character.toUpperCase(c) + s.substring(1));
    }

    public static String logicPixel(Context ctx) {
        DisplayMetrics dm = ctx.getResources().getDisplayMetrics();
        return ((int) (dm.widthPixels / dm.density)) + "x" + ((int) (dm.heightPixels / dm.density));
    }

    public static String physicPixel(Context ctx) {
        DisplayMetrics dm = ctx.getResources().getDisplayMetrics();
        return dm.widthPixels + "x" + dm.heightPixels;
    }

    public static String cpuModel() {
        try {
            String[] abis = Build.SUPPORTED_ABIS;
            return (abis != null && abis.length > 0) ? abis[0] : "";
        } catch (Throwable t) { return ""; }
    }

    public static String appVersion(Context ctx) {
        try {
            PackageInfo pi = ctx.getPackageManager().getPackageInfo(ctx.getPackageName(), 0);
            return pi.versionName == null ? "1.0" : pi.versionName;
        } catch (Throwable t) { return "1.0"; }
    }

    public static long appInstallTime(Context ctx) {
        try {
            PackageInfo pi = ctx.getPackageManager().getPackageInfo(ctx.getPackageName(), 0);
            return pi.firstInstallTime;
        } catch (Throwable t) { return 0L; }
    }

    public static long appUpdateTime(Context ctx) {
        try {
            PackageInfo pi = ctx.getPackageManager().getPackageInfo(ctx.getPackageName(), 0);
            return pi.lastUpdateTime;
        } catch (Throwable t) { return 0L; }
    }

    /* ─────────── isRoot 六重检测（o00oO0o.java 完整复刻） ─────────── */

    public static int isRoot(Context ctx) {
        return (checkTags() || checkSuPaths() || checkWhichSu(ctx)
                || checkBusybox(ctx) || checkTestKeys() || checkSuCommand(ctx)) ? 1 : 0;
    }

    private static boolean checkTags() {
        String t = Build.TAGS;
        return t != null && t.contains("test-keys");
    }

    private static boolean checkSuPaths() {
        String[] dirs = {"/system/bin/", "/system/xbin/", "/system/sbin/", "/sbin/", "/vendor/bin/"};
        for (String d : dirs) {
            try { if (new File(d + "su").exists()) return true; }
            catch (Throwable ignored) {}
        }
        return false;
    }

    private static boolean checkWhichSu(Context ctx) {
        return BoundedCommand.matches(ctx.getCacheDir(), 2000, null, "/system/xbin/which", "su");
    }

    private static boolean checkBusybox(Context ctx) {
        return BoundedCommand.matches(ctx.getCacheDir(), 2000, null, "busybox", "df");
    }

    private static boolean checkSuCommand(Context ctx) {
        return BoundedCommand.matches(ctx.getCacheDir(), 2000, "test_ok", "su", "-c", "echo", "test_ok");
    }

    private static boolean checkTestKeys() { return checkTags(); }

    /* ─────────── DeviceId (deviceOAID 语义复刻) ─────────── */

    /** md5Old: hex(md5(ts-string + MD5_KEY)) — 对齐 o00O0OO.OoooOo0 */
    public static String md5Old(String tsString) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] dg = md.digest((tsString + MD5_KEY).getBytes("UTF-8"));
            StringBuilder sb = new StringBuilder();
            for (byte b : dg) sb.append(String.format("%02x", b));
            return sb.toString();
        } catch (Throwable t) { return ""; }
    }

    /**
     * DeviceId: 首次 md5Old(首启时间戳) 生成后持久化。
     * (ydsj 优先 MSA OAID；probe 无 MSA 依赖 → md5Old 兜底路径，
     *  生成一次后 SharedPreferences 持久化，行为等价 DataStore)
     */
    public static synchronized String deviceId(Context ctx) {
        SharedPreferences sp = ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
        String id = sp.getString(PREF_DEVICE_ID, "");
        if (id == null || id.length() == 0) {
            id = md5Old(String.valueOf(System.currentTimeMillis()));
            if (!sp.edit().putString(PREF_DEVICE_ID, id).commit()) {
                throw new IllegalStateException("DeviceId 持久化失败");
            }
        }
        return id;
    }

    /** 当前已持久化的 DeviceId（不新建）——供外部观察 */
    public static String deviceIdPeek(Context ctx) {
        return ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
                .getString(PREF_DEVICE_ID, "");
    }

    /* ─────────── tokenSign — HttpUtil 语义 ─────────── */

    public static String tokenSign(String ts, String token, String uid) {
        try {
            String s = "timeStamp=" + ts + "&token=" + token + "&uid=" + uid + "&wh2016_swcampus";
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] dg = md.digest(s.getBytes("UTF-8"));
            StringBuilder sb = new StringBuilder();
            for (byte b : dg) sb.append(String.format("%02x", b));
            return sb.toString();
        } catch (Throwable t) { return ""; }
    }

    /* ─────────── 组装层 ─────────── */

    /**
     * headerSign 的明文 hm（std::map 字母序 JSON — 与 App
     * CommonEncryptionInterceptor 加密前的装配体一致）
     */
    public static TreeMap<String, String> headerMap(Context ctx) {
        String ts = String.valueOf(System.currentTimeMillis());
        String nonce = UUID.randomUUID().toString();
        TreeMap<String, String> m = new TreeMap<>();
        m.put("Accept-Encoding", "gzip");
        m.put("CustomDeviceId", "");
        m.put("DeviceId", deviceId(ctx));
        m.put("IMEI", "");
        m.put("androidId", "");
        m.put("appInstallTime", String.valueOf(appInstallTime(ctx)));
        m.put("appUpdateTime", String.valueOf(appUpdateTime(ctx)));
        m.put("appVersion", appVersion(ctx));
        m.put("blMac", "");
        m.put("cpuModel", cpuModel());
        m.put("deviceName", deviceName());
        m.put("isRoot", String.valueOf(isRoot(ctx)));
        m.put("logicPixel", logicPixel(ctx));
        m.put("nonce", nonce);
        m.put("osType", "0");
        m.put("osVersion", osVersion());
        m.put("physicPixel", physicPixel(ctx));
        m.put("timeStamp", ts);
        m.put("token", "");
        m.put("tokenSign", "");
        m.put("uid", "-1");
        m.put("wifiMac", "");
        return m;
    }

    /** 登录后版本：填入 uid/token/tokenSign（HttpUtil.java:96-98） */
    public static TreeMap<String, String> headerMapAuthed(
            Context ctx, String uid, String token) {
        TreeMap<String, String> m = headerMap(ctx);
        String ts = m.get("timeStamp");
        m.put("token", token);
        m.put("uid", uid);
        m.put("tokenSign", tokenSign(ts, token, uid));
        return m;
    }

    /** login 请求明文 body 的设备部分 (CommonApiManager→CommonServer.getLogin) */
    public static TreeMap<String, String> loginPayloadDevice(Context ctx) {
        TreeMap<String, String> m = new TreeMap<>();
        m.put("device_model", deviceName());
        m.put("os_version", osVersion());
        return m;
    }

    /* ─────────── JSON 序列化（无第三方依赖，标准 Android org.json） ── */

    public static String toJsonString(TreeMap<String, String> m) {
        StringBuilder sb = new StringBuilder("{");
        boolean first = true;
        for (Map.Entry<String, String> e : m.entrySet()) {
            if (!first) sb.append(',');
            sb.append('"').append(esc(e.getKey())).append("\":")
              .append('"').append(esc(e.getValue())).append('"');
            first = false;
        }
        sb.append('}');
        return sb.toString();
    }

    private static String esc(String s) {
        if (s == null) return "";
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            switch (c) {
                case '"':  sb.append("\\\""); break;
                case '\\': sb.append("\\\\"); break;
                case '\n': sb.append("\\n"); break;
                case '\r': sb.append("\\r"); break;
                case '\t': sb.append("\\t"); break;
                default:
                    if (c < 0x20) sb.append(String.format("\\u%04x", (int) c));
                    else sb.append(c);
            }
        }
        return sb.toString();
    }

    /* ─────────── 采集并输出完整 report —────────────────── */

    /** Export the request header map used by the real API requests. */
    public static String collectReport(Context ctx) {
        TreeMap<String, String> runtime = headerMap(ctx);
        TreeMap<String, String> hm = new TreeMap<>();
        // Persist only stable device attributes. Session/request values and
        // appVersion are generated by the client at request time.
        String[] stable = {
                "physicPixel", "logicPixel", "isRoot", "osType", "IMEI",
                "blMac", "cpuModel", "deviceName", "appInstallTime",
                "androidId", "DeviceId", "appUpdateTime", "wifiMac",
                "CustomDeviceId", "osVersion"
        };
        for (String key : stable) hm.put(key, runtime.getOrDefault(key, ""));
        return "{\"hm\":" + toJsonString(hm) + "}";
    }

    private static String join(String[] a, String sep) {
        if (a == null) return "";
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < a.length; i++) {
            if (i > 0) sb.append(sep);
            sb.append(a[i]);
        }
        return sb.toString();
    }

    /** 保存 report 至外部私有目录 */
    public static File saveReport(Context ctx, String json) throws Exception {
        File dir = ctx.getExternalFilesDir(null);
        if (dir == null) dir = ctx.getFilesDir();
        long stamp = System.currentTimeMillis();
        File f = new File(dir, "device_info_" + stamp + ".json");
        while (!f.createNewFile()) f = new File(dir, "device_info_" + (++stamp) + ".json");
        try (OutputStreamWriter w = new OutputStreamWriter(new FileOutputStream(f), "UTF-8")) {
            w.write(json);
        } catch (Exception error) {
            f.delete();
            throw error;
        }
        return f;
    }
}
