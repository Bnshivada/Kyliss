import 'package:flutter/material.dart';
import '../../core/camera_service.dart';
import '../../core/blink_detector.dart';
import '../../services/native_bridge.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CameraService _cameraService = CameraService();
  final BlinkDetector _blinkDetector = BlinkDetector();
  bool _isActive = false;

  @override
  void initState() {
    super.initState();
  }

  void _toggleSystem() {
    setState(() => _isActive = !_isActive);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kyliss Control")),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  border: Border.all(color: _isActive ? Colors.green : Colors.red, width: 3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Icon(Icons.face, size: 100, color: Colors.grey),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: SwitchListTile(
              title: const Text("Sistem Aktif"),
              subtitle: const Text("Göz takibi çalışıyor"),
              value: _isActive,
              onChanged: (val) => _toggleSystem(),
            ),
          ),
        ],
      ),
    );
  }
}
