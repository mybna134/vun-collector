package com.geetest.core;

import android.content.Context;
import android.content.pm.Signature;
import android.security.keystore.KeyGenParameterSpec;
import android.util.Base64;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.yfanads.android.adx.thirdpart.filedownload.model.FileDownloadStatus;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Random;

/* JADX INFO: loaded from: /home/mybna134/Projects/reverse/analysis/recovered_dex/classes4.dex */
public class Utils {
    public static String c(Context context) {
        j jVar = new j(context.getPackageManager());
        boolean z = jVar.f10038a;
        try {
            m mVarA = jVar.a("com.geetest.core.attestation." + z, z);
            p pVarB = mVarA.f10054a.b();
            StringBuilder sb = new StringBuilder();
            sb.append(pVarB.b ? "1" : "0");
            sb.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            sb.append(pVarB.c);
            sb.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            sb.append(mVarA.b);
            sb.append(HiAnalyticsConstant.REPORT_VAL_SEPARATOR);
            sb.append(mVarA.c);
            return sb.toString();
        } catch (k e) {
            return String.valueOf(e.getCode());
        }
    }

    public static String getCert() throws NoSuchAlgorithmException, IOException, CertificateException, KeyStoreException, NoSuchProviderException, InvalidAlgorithmParameterException {
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            keyStore.load(null);
            if (keyStore.containsAlias("no506b3822wb")) {
                keyStore.deleteEntry("no506b3822wb");
            }
            KeyGenParameterSpec.Builder builder = new KeyGenParameterSpec.Builder("no506b3822wb", 12);
            byte[] bArr = new byte[8];
            new Random().nextBytes(bArr);
            builder.setAttestationChallenge(bArr);
            KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("EC", "AndroidKeyStore");
            keyPairGenerator.initialize(builder.build());
            keyPairGenerator.generateKeyPair();
            return Base64.encodeToString(((X509Certificate) keyStore.getCertificateChain("no506b3822wb")[0]).getExtensionValue("1.3.6.1.4.1.11129.2.1.17"), 2);
        } catch (Throwable unused) {
            return "";
        }
    }

    private static String getSignature(Context context) {
        try {
            Signature[] signatureArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures;
            if (signatureArr == null || signatureArr.length <= 0) {
                return "";
            }
            byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(signatureArr[0].toByteArray());
            StringBuilder sb = new StringBuilder();
            for (byte b : bArrDigest) {
                sb.append(Integer.toHexString((b & FileDownloadStatus.error) | 256).substring(1, 3));
            }
            return sb.toString();
        } catch (Throwable unused) {
            return "";
        }
    }
}
