package com.geetest.core;

import android.util.Base64;
import java.security.cert.CertificateParsingException;

/* JADX INFO: loaded from: /home/mybna134/Projects/reverse/analysis/recovered_dex/classes4.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f10065a;
    public final boolean b;
    public final int c;
    public final byte[] d;

    public p(u uVar) throws CertificateParsingException {
        if (!(uVar instanceof r0)) {
            throw new CertificateParsingException("Expected sequence for root of trust, found " + uVar.getClass().getName());
        }
        r0 r0Var = (r0) uVar;
        this.f10065a = c.b(r0Var.a(0));
        this.b = c.a(r0Var.a(1));
        this.c = c.c(r0Var.a(2));
        if (r0Var.m() == 3) {
            this.d = null;
        } else {
            this.d = c.b(r0Var.a(3));
        }
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("Verified boot Key: ");
        sb.append(Base64.encodeToString(this.f10065a, 0));
        sb.append(" (base64)");
        sb.append('\n');
        sb.append("Device locked: ");
        sb.append(this.b);
        sb.append('\n');
        sb.append("Verified boot state: ");
        int i = this.c;
        if (i == 0) {
            str = "Verified";
        } else if (i == 1) {
            str = "Self-signed";
        } else if (i == 2) {
            str = "Unverified";
        } else if (i != 3) {
            str = "Unknown (" + i + ")";
        } else {
            str = "Failed";
        }
        sb.append(str);
        sb.append('\n');
        if (this.d != null) {
            sb.append("Verified boot hash: ");
            sb.append(Base64.encodeToString(this.d, 0));
            sb.append(" (base64)");
        }
        return sb.toString();
    }

    public p(byte[] bArr, boolean z, int i, byte[] bArr2) {
        this.f10065a = bArr;
        this.b = z;
        this.c = i;
        this.d = bArr2;
    }
}
