package com.sportsmonitor.logger.auth

import java.util.concurrent.CountDownLatch
import java.util.concurrent.TimeUnit
import java.util.concurrent.atomic.AtomicInteger
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.async
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.supervisorScope
import org.junit.Assert.*
import org.junit.Test

class AuthRepositoryTest {
    private class Store(@Volatile var value: AuthSession? = null) : SessionPersistence {
        override fun read() = value
        override fun write(session: AuthSession) { value = session }
        override fun clear() { value = null }
    }
    private fun expired() = AuthSession(1, "alice", REFRESH, ACCESS, 0L)

    @Test fun loginObtainsBothTokensPersistsRotationAndLogoutClearsEverything() = runBlocking {
        AuthTestServer { if (it.path == "/login") 200 to loginReply() else 200 to TOKENS }.use { server ->
            val store = Store()
            val auth = AuthRepository(store, AuthApi(ApiSigner(TEST_KEY), server.url))
            auth.login("alice")
            assertEquals(NEW_REFRESH, store.value!!.refreshToken)
            assertEquals(ACCESS, auth.authorizeUpload().session.accessToken)
            assertEquals(2, server.requests.size)
            val restored = AuthRepository(store, AuthApi(ApiSigner(TEST_KEY), server.url))
            assertEquals("alice", restored.session.value!!.username)
            val grant = restored.authorizeUpload()
            restored.logout()
            assertNull(store.value)
            assertNull(restored.session.value)
            assertThrows(IllegalStateException::class.java) { restored.checkCurrent(grant) }
            Unit
        }
    }

    @Test fun concurrentRefreshesConsumeRefreshTokenOnlyOnce() = runBlocking {
        val count = AtomicInteger()
        AuthTestServer { count.incrementAndGet(); 200 to TOKENS }.use { server ->
            val store = Store(expired())
            val auth = AuthRepository(store, AuthApi(ApiSigner(TEST_KEY), server.url))
            val first = async(Dispatchers.Default) { auth.authorizeUpload() }
            val second = async(Dispatchers.Default) { auth.authorizeUpload() }
            assertEquals(ACCESS, first.await().session.accessToken)
            assertEquals(ACCESS, second.await().session.accessToken)
            assertEquals(1, count.get())
            assertEquals(NEW_REFRESH, store.value!!.refreshToken)
        }
    }

    @Test fun logoutDuringRefreshCannotRestoreTheSession() = runBlocking {
        val started = CountDownLatch(1)
        val finish = CountDownLatch(1)
        AuthTestServer {
            started.countDown()
            check(finish.await(5, TimeUnit.SECONDS))
            200 to TOKENS
        }.use { server ->
            val store = Store(expired())
            val auth = AuthRepository(store, AuthApi(ApiSigner(TEST_KEY), server.url))
            supervisorScope {
                val pending = async(Dispatchers.Default) { auth.authorizeUpload() }
                try {
                    assertTrue(started.await(5, TimeUnit.SECONDS))
                    auth.logout()
                } finally { finish.countDown() }
                try { pending.await(); fail("Logged-out refresh must be discarded") }
                catch (_: IllegalStateException) { }
            }
            assertNull(store.value)
            assertNull(auth.session.value)
        }
    }

    @Test fun invalidRefreshTokenClearsLoginAndRequiresRelogin() = runBlocking {
        AuthTestServer { 401 to """{"error":{"code":"invalid_refresh_token","message":"请重新登录"}}""" }.use { server ->
            val store = Store(expired())
            val auth = AuthRepository(store, AuthApi(ApiSigner(TEST_KEY), server.url))
            try { auth.authorizeUpload(); fail("Expected expired refresh token") }
            catch (error: ApiException) { assertEquals("invalid_refresh_token", error.code) }
            assertNull(auth.session.value)
            assertNull(store.value)
        }
    }
}
