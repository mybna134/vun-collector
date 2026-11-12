package com.sportsmonitor.logger.auth

import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.NonCancellable
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext

data class UploadAuthorization(val session: AuthSession, val generation: Long)

class AuthRepository(private val store: SessionPersistence, val api: AuthApi,
                     private val now: () -> Long = System::currentTimeMillis) {
    private val mutableSession = MutableStateFlow(store.read())
    val session = mutableSession.asStateFlow()
    private val mutex = Mutex()
    private var generation = 0L

    @Synchronized private fun save(expectedGeneration: Long, session: AuthSession) {
        check(generation == expectedGeneration) { "登录已退出，请重新登录" }
        try { store.write(session) } catch (error: Exception) {
            generation++
            mutableSession.value = null
            store.clear()
            throw error
        }
        mutableSession.value = session
    }

    @Synchronized fun logout() {
        generation++
        mutableSession.value = null
        store.clear()
    }

    @Synchronized private fun currentGeneration(): Long = generation

    suspend fun login(username: String) = mutex.withLock {
        val expected = currentGeneration()
        val result = withContext(Dispatchers.IO) {
            val identity = api.login(username)
            val startedAt = now()
            val tokens = api.refresh(identity.refreshToken)
            AuthSession(identity.uid, identity.username, tokens.refreshToken, tokens.accessToken,
                startedAt + tokens.expiresIn * 1000)
        }
        save(expected, result)
    }

    suspend fun authorizeUpload(): UploadAuthorization = mutex.withLock {
        val expected = currentGeneration()
        val current = session.value ?: error("请先在 Settings 登录后上传")
        val active = if (current.expiresAtMs > now() + 30_000) current else withContext(NonCancellable) {
            try {
                val startedAt = now()
                val tokens = withContext(Dispatchers.IO) { api.refresh(current.refreshToken) }
                current.copy(refreshToken = tokens.refreshToken, accessToken = tokens.accessToken,
                    expiresAtMs = startedAt + tokens.expiresIn * 1000).also { save(expected, it) }
            } catch (error: ApiException) {
                if (error.code == "invalid_refresh_token") invalidate(expected)
                throw error
            }
        }
        UploadAuthorization(active, expected).also(::checkCurrent)
    }

    @Synchronized fun checkCurrent(authorization: UploadAuthorization) {
        check(generation == authorization.generation && session.value?.uid == authorization.session.uid) {
            "登录已退出，请重新登录"
        }
    }

    @Synchronized private fun invalidate(expected: Long) {
        if (generation == expected) logout()
    }

    @Synchronized fun expireAccess(authorization: UploadAuthorization) {
        if (generation == authorization.generation) {
            session.value?.let { save(generation, it.copy(expiresAtMs = 0L)) }
        }
    }
}
