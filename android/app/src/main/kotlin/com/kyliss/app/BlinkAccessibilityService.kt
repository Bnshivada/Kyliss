package com.kyliss.app

import android.accessibilityservice.AccessibilityService
import android.accessibilityservice.GestureDescription
import android.content.Context
import android.content.Intent
import android.graphics.Path
import android.util.DisplayMetrics
import android.view.WindowManager
import android.view.accessibility.AccessibilityEvent

class BlinkAccessibilityService : AccessibilityService() {

    // MainActivity'nin arayıp da bulamadığı o meşhur triggerScroll burada!
    companion object {
        var instance: BlinkAccessibilityService? = null

        fun triggerScroll() {
            instance?.performScroll()
        }
    }

    override fun onServiceConnected() {
        super.onServiceConnected()
        instance = this
    }

    override fun onUnbind(intent: Intent?): Boolean {
        instance = null
        return super.onUnbind(intent)
    }

    override fun onAccessibilityEvent(event: AccessibilityEvent?) {
        // Gerekli değil ama servisin çalışması için mecbur tanımlanmalı
    }

    override fun onInterrupt() {
        // Kesilme durumu
    }

    // Reels'i aşağı kaydıran asıl büyü burası
    private fun performScroll() {
        val wm = getSystemService(Context.WINDOW_SERVICE) as WindowManager
        val displayMetrics = DisplayMetrics()
        wm.defaultDisplay.getMetrics(displayMetrics)

        // Ekranın ortasından başlayıp yukarı doğru kaydırma (Aşağıdaki videoya geçmek için)
        val middleX = displayMetrics.widthPixels / 2f
        val startY = displayMetrics.heightPixels * 0.8f
        val endY = displayMetrics.heightPixels * 0.2f

        val path = Path()
        path.moveTo(middleX, startY)
        path.lineTo(middleX, endY)

        val gestureBuilder = GestureDescription.Builder()
        // 300 milisaniyede kaydırma işlemini yap
        gestureBuilder.addStroke(GestureDescription.StrokeDescription(path, 0, 300))
        
        dispatchGesture(gestureBuilder.build(), null, null)
    }
}
