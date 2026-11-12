'use strict';
// KFM/rustFrida. Observe the current collector's SDK boundary; preserve returns.
// Supports attach and spawn. Raw tokens stay in the local evidence log.
var installed = false;
function installCapture(app) {
  if (installed) return;
  var pkg = String(app.getPackageName());
  if (pkg !== 'com.collector.vun') throw new Error('Wrong process: ' + pkg);
  console.log('[VUN] target=' + pkg);
  var Gee = Java.use('com.sportsmonitor.logger.probe.GeeSdk');
  Gee.generate.overload('android.content.Context').impl = function (context) {
    console.log('[VUN] GeeSdk.generate enter package=' + String(context.getPackageName()));
    var result = this.$orig(context);
    console.log('[VUN_TOKEN] ' + String(result));
    return result;
  };
  var Json = Java.use('com.sportsmonitor.logger.probe.ProbeJson');
  Json.sanitizeGeePlain.overload('java.lang.String').impl = function (plain) {
    console.log('[VUN_PLAIN] ' + String(plain));
    var result = this.$orig(plain);
    console.log('[VUN_EXPORT] ' + String(result));
    return result;
  };
  installed = true;
  console.log('[VUN] SDK boundary hooks ready');
}

var ready = Java.perform || Java.ready;
ready(function () {
  var app = Java.use('android.app.ActivityThread').currentApplication();
  if (app) {
    installCapture(app);
    return;
  }
  // During spawn, ART is ready before ActivityThread creates Application.
  // Install at the application lifecycle callback, after normal onCreate runs.
  var Instrumentation = Java.use('android.app.Instrumentation');
  Instrumentation.callApplicationOnCreate.overload('android.app.Application').impl = function (application) {
    var result = this.$orig(application);
    try {
      installCapture(application);
    } catch (error) {
      console.log('[VUN_ERROR] Cannot install capture hooks: ' + String(error));
    }
    return result;
  };
  // Also cover Application becoming available between the check and hook.
  app = Java.use('android.app.ActivityThread').currentApplication();
  if (app) installCapture(app);
  else console.log('[VUN] Waiting for Application initialization');
});
