package com.geetest.core;

import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: /home/mybna134/Projects/reverse/analysis/recovered_dex/classes4.dex */
public class GeeGuardConfiguration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f9979a;
    public final boolean b;
    public final boolean c;
    public final HashMap<String, Object> d;
    public final HashMap<String, JSONObject> e;
    public final int f;
    public final String g;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f9980a = null;
        public boolean b = false;
        public boolean c = true;
        public HashMap<String, Object> d = null;
        public HashMap<String, JSONObject> e = null;
        public int f = 1;
        public String g = null;

        public Builder addSignature(String str) {
            this.g = str;
            return this;
        }

        public GeeGuardConfiguration build() {
            return new GeeGuardConfiguration(this);
        }

        public Builder setAlInfo(boolean z) {
            this.b = z;
            return this;
        }

        public Builder setAppId(String str) {
            this.f9980a = str;
            return this;
        }

        public Builder setDevInfo(boolean z) {
            this.c = z;
            return this;
        }

        public Builder setExtraInfo(HashMap<String, JSONObject> map) {
            this.e = map;
            return this;
        }

        public Builder setLevel(int i) {
            this.f = i;
            return this;
        }

        public Builder setOuterInfo(HashMap<String, Object> map) {
            this.d = map;
            return this;
        }
    }

    public String getAppId() {
        return this.f9979a;
    }

    public String getContent() {
        return this.g;
    }

    public HashMap<String, JSONObject> getExtraInfo() {
        return this.e;
    }

    public int getLevel() {
        return this.f;
    }

    public HashMap<String, Object> getOuterInfo() {
        return this.d;
    }

    public boolean isAlInfo() {
        return this.b;
    }

    public boolean isDevInfo() {
        return this.c;
    }

    private GeeGuardConfiguration(Builder builder) {
        this.f9979a = builder.f9980a;
        this.b = builder.b;
        this.c = builder.c;
        this.d = builder.d;
        this.e = builder.e;
        this.f = builder.f;
        this.g = builder.g;
    }
}
