package com.research.geetokenprobe;

import java.io.File;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.util.concurrent.TimeUnit;

/** Runs small diagnostic commands without blocking on pipes or a root prompt. */
public final class BoundedCommand {
    private BoundedCommand() {}

    public static boolean matches(File cacheDir, long timeoutMs, String expected, String... command) {
        File output = null;
        Process process = null;
        try {
            // A file avoids deadlock when a child fills stdout/stderr before exiting.
            output = File.createTempFile("root-probe-", ".txt", cacheDir);
            process = new ProcessBuilder(command).redirectErrorStream(true).redirectOutput(output).start();
            if (!process.waitFor(timeoutMs, TimeUnit.MILLISECONDS)) return false;
            if (process.exitValue() != 0) return false;
            if (expected == null) return true;
            if (output.length() > 4096) return false;
            return expected.equals(new String(Files.readAllBytes(output.toPath()), StandardCharsets.UTF_8).trim());
        } catch (InterruptedException error) {
            Thread.currentThread().interrupt();
            return false;
        } catch (Exception error) {
            return false;
        } finally {
            if (process != null) {
                process.destroy();
                if (process.isAlive()) process.destroyForcibly();
                try { process.getInputStream().close(); } catch (Exception ignored) {}
                try { process.getErrorStream().close(); } catch (Exception ignored) {}
                try { process.getOutputStream().close(); } catch (Exception ignored) {}
            }
            if (output != null) output.delete();
        }
    }
}
