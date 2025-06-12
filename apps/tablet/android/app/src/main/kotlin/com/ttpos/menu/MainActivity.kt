package com.ttpos.menu

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import android.provider.Settings

class MainActivity: FlutterActivity(){
  private val DEVICE_ID_CHANNEL:String =  "deviceid.channel"

  override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
    super.configureFlutterEngine(flutterEngine)
    val deviceId = Settings.Secure.getString(contentResolver, Settings.Secure.ANDROID_ID)
    MethodChannel(flutterEngine.dartExecutor.binaryMessenger, DEVICE_ID_CHANNEL).setMethodCallHandler { call, result ->
      if (call.method == "deviceID") {
        result.success(deviceId)
      } else {
        result.notImplemented()
      }
    }
  }
}

