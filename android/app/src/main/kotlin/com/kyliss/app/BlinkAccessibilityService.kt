package com.kyliss.app

import android.accessibilityservice.AccessibilityService
import android.accessibilityservice.GestureDescription
import android.graphics.Path
import android.view.accessibility.AccessibilityEvent

class BlinkAccessibilityService : AccessibilityService() {

    override fun onAccessibilityEvent(event: AccessibilityEvent?) {}

    override fun onInterrupt() {}

    fun performScrollUp() {
        val path = Path()
        val metrics = resources.displayMetrics
        val screenHeight = metrics.heightPixels.toFloat()
        val screenWidth = metrics.widthPixels.toFloat()

        path.moveTo(screenWidth / 2, screenHeight * 0.8f)
        path.lineTo(screenWidth / 2, screenHeight * 0.2f)

        val gestureBuilder = GestureDescription.Builder()
        gestureBuilder.addStroke(GestureDescription.StrokeDescription(path, 0, 100))
        dispatchGesture(gestureBuilder.build(), null, null)
    }
}
