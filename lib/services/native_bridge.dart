import 'package:flutter/services.dart';

class NativeBridge {
  static const MethodChannel _channel = MethodChannel('com.kyliss.app/scroll');

  static Future<void> triggerScroll() async {
    try {
      await _channel.invokeMethod('performScroll');
    } on PlatformException catch (e) {
      print("Kaydırma hatası: ${e.message}");
    }
  }
}
