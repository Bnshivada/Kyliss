import 'package:camera/camera.dart';
import 'package:google_mlkit_face_detection/google_mlkit_face_detection.dart';
import 'package:flutter/foundation.dart';

class CameraService {
  CameraController? _controller;
  bool _isBusy = false;
  final FaceDetector _faceDetector = FaceDetector(
    options: FaceDetectorOptions(
      enableClassification: true,
      performanceMode: FaceDetectorMode.accurate,
    ),
  );

  Future<void> initialize(
    CameraDescription camera, 
    Function(List<Face>) onFacesDetected
  ) async {
    _controller = CameraController(
      camera, 
      ResolutionPreset.low,
      enableAudio: false,
    );

    await _controller?.initialize();
    
    _controller?.startImageStream((CameraImage image) async {
      if (_isBusy) return;
      _isBusy = true;

      final inputImage = _processCameraImage(image, camera);
      if (inputImage != null) {
        final faces = await _faceDetector.processImage(inputImage);
        onFacesDetected(faces);
      }
      
      _isBusy = false;
    });
  }

  InputImage? _processCameraImage(CameraImage image, CameraDescription camera) {
    final WriteBuffer allBytes = WriteBuffer();
    for (final Plane plane in image.planes) {
      allBytes.putUint8List(plane.bytes);
    }
    final bytes = allBytes.done().buffer.asUint8List();

    final imageRotation = InputImageRotationValue.fromRawValue(camera.sensorOrientation) ?? InputImageRotation.rotation0deg;
    final imageFormat = InputImageFormatValue.fromRawValue(image.format.raw) ?? InputImageFormat.nv21;

    final plane = image.planes.first;

    return InputImage.fromBytes(
      bytes: bytes,
      metadata: InputImageMetadata(
        size: Size(image.width.toDouble(), image.height.toDouble()),
        rotation: imageRotation,
        format: imageFormat,
        bytesPerRow: plane.bytesPerRow,
      ),
    );
  }

  void dispose() {
    _controller?.dispose();
    _faceDetector.close();
  }
}
