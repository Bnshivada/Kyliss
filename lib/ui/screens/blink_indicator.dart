import 'package:flutter/material.dart';

class BlinkIndicator extends StatelessWidget {
  final bool isDetected;
  const BlinkIndicator({super.key, required this.isDetected});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isDetected ? Colors.green.withOpacity(0.8) : Colors.transparent,
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.auto_awesome,
        color: isDetected ? Colors.white : Colors.transparent,
      ),
    );
  }
}
