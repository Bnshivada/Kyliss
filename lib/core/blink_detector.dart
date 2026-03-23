import 'dart:math';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';

class BlinkDetector {
  static const double eyeClosedThreshold = 0.22;
  static const int doubleBlinkIntervalMs = 500;
  
  DateTime? _lastBlinkTime;
  bool _wasEyeClosed = false;

  bool processFace(Face face) {
    final leftOpenProb = face.leftEyeOpenProbability ?? 1.0;
    final rightOpenProb = face.rightEyeOpenProbability ?? 1.0;
    final avgOpenProb = (leftOpenProb + rightOpenProb) / 2.0;

    if (avgOpenProb < eyeClosedThreshold) {
      _wasEyeClosed = true;
      return false;
    } else {
      if (_wasEyeClosed) {
        _wasEyeClosed = false;
        final currentTime = DateTime.now();
        
        if (_lastBlinkTime != null && 
            currentTime.difference(_lastBlinkTime!).inMilliseconds < doubleBlinkIntervalMs) {
          _lastBlinkTime = null;
          return true; // Çift göz kırpma onaylandı!
        }
        _lastBlinkTime = currentTime;
      }
    }
    return false;
  }
}
