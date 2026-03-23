package com.kyliss.app

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import android.content.Context
import android.view.accessibility.AccessibilityManager

class MainActivity: FlutterActivity() {
    private val CHANNEL = "com.kyliss.app/scroll"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            if (call.method == "performScroll") {
                val am = getSystemService(Context.ACCESSIBILITY_SERVICE) as AccessibilityManager
                if (am.isEnabled) {
                    BlinkAccessibilityService.triggerScroll()
                    result.success(null)
                } else {
                    result.error("UNAVAILABLE", "Erişilebilirlik servisi aktif değil", null)
                }
            } else {
                result.notImplemented()
            }
        }
    }
}
