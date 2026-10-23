#include <jni.h>
#include <cmath>
#include <limits>

// Reference: reverse/analysis/gnss_altitude_tracker.cpp, AccumulateAltitude.
// Preserve the real GPS sample. Persistence belongs to Room, not a native global vector.
extern "C" JNIEXPORT jdouble JNICALL
Java_com_sportsmonitor_logger_recording_NativeAltitude_accept(JNIEnv*, jobject, jdouble altitude) {
    return std::isfinite(altitude) ? altitude : std::numeric_limits<double>::quiet_NaN();
}
