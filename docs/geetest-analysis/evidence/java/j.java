package com.geetest.core;

import android.content.pm.PackageManager;
import android.os.Build;
import android.security.keystore.KeyGenParameterSpec;
import com.huawei.openalliance.ad.views.PPSLabelView;
import java.io.ByteArrayInputStream;
import java.nio.charset.StandardCharsets;
import java.security.GeneralSecurityException;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.ProviderException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.security.spec.ECGenParameterSpec;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import p062o0000Oo0.OooOo;

/* JADX INFO: loaded from: /home/mybna134/Projects/reverse/analysis/recovered_dex/classes4.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f10038a;

    public j(PackageManager packageManager) {
        this.f10038a = Build.VERSION.SDK_INT >= 28 && packageManager.hasSystemFeature("android.hardware.strongbox_keystore");
    }

    public final m a(String str, boolean z) {
        int iA;
        String strReplace;
        try {
            b(str, z);
            KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
            h hVarA = null;
            keyStore.load(null);
            Certificate[] certificateChain = keyStore.getCertificateChain(str);
            if (certificateChain == null) {
                throw new CertificateException("Unable to get certificate chain");
            }
            ArrayList<Certificate> arrayList = new ArrayList(certificateChain.length);
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            for (Certificate certificate : certificateChain) {
                arrayList.add(certificateFactory.generateCertificate(new ByteArrayInputStream(certificate.getEncoded())));
            }
            ArrayList arrayList2 = new ArrayList();
            for (Certificate certificate2 : arrayList) {
                if (certificate2 instanceof X509Certificate) {
                    arrayList2.add((X509Certificate) certificate2);
                }
            }
            try {
                iA = c.a((List<X509Certificate>) arrayList2);
                try {
                    ArrayList arrayList3 = new ArrayList();
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        arrayList3.add(((X509Certificate) it.next()).getSerialNumber().toString(16).toLowerCase());
                    }
                    strReplace = arrayList3.toString().replace(PPSLabelView.Code, "").replace("[", "").replace("]", "");
                } catch (GeneralSecurityException unused) {
                    strReplace = null;
                }
            } catch (GeneralSecurityException unused2) {
                iA = -1;
            }
            int size = arrayList2.size() - 1;
            k kVar = null;
            while (size >= 0) {
                try {
                    hVarA = h.a((X509Certificate) arrayList2.get(size));
                    break;
                } catch (CertificateParsingException e) {
                    size--;
                    kVar = new k(-4, e);
                }
            }
            if (hVarA != null || kVar == null) {
                return new m(hVarA, iA, strReplace);
            }
            throw kVar;
        } catch (ProviderException e2) {
            if (Build.VERSION.SDK_INT >= 28 && OooOo.OooO00o(e2)) {
                throw new k(-5, e2);
            }
            if (e2.getCause() == null || e2.getCause().getMessage() == null || !e2.getCause().getMessage().contains("device ids")) {
                throw new k(-2, e2);
            }
            throw new k(-6, e2);
        } catch (Exception e3) {
            throw new k(-2, e3);
        }
    }

    public final void b(String str, boolean z) throws GeneralSecurityException {
        int i = Build.VERSION.SDK_INT;
        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("EC", "AndroidKeyStore");
        Date date = new Date();
        Date date2 = new Date(date.getTime() + 1000000);
        Date date3 = new Date(date.getTime() + 2000000);
        KeyGenParameterSpec.Builder builder = new KeyGenParameterSpec.Builder(str, 4);
        builder.setAlgorithmParameterSpec(new ECGenParameterSpec("secp256r1")).setKeyValidityStart(date).setKeyValidityForOriginationEnd(date2).setKeyValidityForConsumptionEnd(date3).setAttestationChallenge(date.toString().getBytes(StandardCharsets.UTF_8));
        if (i >= 28 && z) {
            builder.setIsStrongBoxBacked(true);
        }
        builder.setDigests("NONE", "SHA-256");
        keyPairGenerator.initialize(builder.build());
        keyPairGenerator.generateKeyPair();
    }
}
