package com.sportsmonitor.logger.auth

import android.content.Context
import android.security.keystore.KeyGenParameterSpec
import android.security.keystore.KeyProperties
import java.security.KeyStore
import java.util.Base64
import javax.crypto.Cipher
import javax.crypto.KeyGenerator
import javax.crypto.SecretKey
import javax.crypto.spec.GCMParameterSpec
import org.json.JSONObject

data class AuthSession(val uid: Long, val username: String, val refreshToken: String,
                       val accessToken: String, val expiresAtMs: Long)

interface SessionPersistence {
    fun read(): AuthSession?
    fun write(session: AuthSession)
    fun clear()
}

/** Tokens stay in an encrypted preference; the encryption key stays in Android Keystore. */
class AuthSessionStore(context: Context) : SessionPersistence {
    private val preferences = context.getSharedPreferences("upload_login", Context.MODE_PRIVATE)
    private val alias = "vun_upload_login"
    private fun key(): SecretKey {
        val store = KeyStore.getInstance("AndroidKeyStore").apply { load(null) }
        (store.getKey(alias, null) as? SecretKey)?.let { return it }
        return KeyGenerator.getInstance(KeyProperties.KEY_ALGORITHM_AES, "AndroidKeyStore").run {
            init(KeyGenParameterSpec.Builder(alias, KeyProperties.PURPOSE_ENCRYPT or KeyProperties.PURPOSE_DECRYPT)
                .setBlockModes(KeyProperties.BLOCK_MODE_GCM).setEncryptionPaddings(KeyProperties.ENCRYPTION_PADDING_NONE).build())
            generateKey()
        }
    }

    override fun read(): AuthSession? {
        val value = preferences.getString("session", null) ?: return null
        return try {
            val parts = value.split(':', limit = 2)
            val cipher = Cipher.getInstance("AES/GCM/NoPadding")
            cipher.init(Cipher.DECRYPT_MODE, key(), GCMParameterSpec(128, Base64.getDecoder().decode(parts[0])))
            val json = JSONObject(String(cipher.doFinal(Base64.getDecoder().decode(parts[1])), Charsets.UTF_8))
            AuthSession(numericUid(json.get("uid")), json.getString("username"), token(json.getString("refresh")),
                token(json.getString("access")), json.getLong("expires"))
        } catch (_: Exception) {
            clear()
            null
        }
    }

    override fun write(session: AuthSession) {
        val json = JSONObject().put("uid", session.uid).put("username", session.username)
            .put("refresh", session.refreshToken).put("access", session.accessToken).put("expires", session.expiresAtMs)
        val cipher = Cipher.getInstance("AES/GCM/NoPadding")
        cipher.init(Cipher.ENCRYPT_MODE, key())
        val ciphertext = cipher.doFinal(json.toString().toByteArray(Charsets.UTF_8))
        val encoded = "${Base64.getEncoder().encodeToString(cipher.iv)}:${Base64.getEncoder().encodeToString(ciphertext)}"
        check(preferences.edit().putString("session", encoded).commit()) { "无法保存登录信息，请重新登录" }
    }

    override fun clear() {
        check(preferences.edit().clear().commit()) { "无法清除登录信息，请重试" }
        KeyStore.getInstance("AndroidKeyStore").apply { load(null); deleteEntry(alias) }
    }
}
