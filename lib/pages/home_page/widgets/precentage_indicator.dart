import 'dart:math';

import 'package:flutter/material.dart';

class PrecentageIndicatorCard extends StatelessWidget {
  final int score;
  final String range;
  final double progress;

  const PrecentageIndicatorCard(
      {super.key,
      required this.score,
      required this.range,
      required this.progress});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CustomPaint(
                size: const Size(200, 100), // Half-circle size
                painter: HalfCirclePainter(progress),
                child: const Center(
                  child: Icon(
                    Icons.emoji_events,
                    size: 50,
                    color: Colors.amber,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              score.toString(),
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              '($range)',
              style: const TextStyle(fontSize: 20, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

class HalfCirclePainter extends CustomPainter {
  final double progress;

  HalfCirclePainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint backgroundPaint = Paint()
      ..color = Colors.grey[300]!
      ..style = PaintingStyle.stroke
      ..strokeWidth = 30;

    final Paint foregroundPaint = Paint()
      ..color = Colors.purple
      ..style = PaintingStyle.stroke
      ..strokeWidth = 30
      ..strokeCap = StrokeCap.round;

    // Draw the background half-circle
    canvas.drawArc(
      Rect.fromCircle(
        center: Offset(
          size.width / 5,
          size.height / 3,
        ),
        radius: size.width / 5,
      ),
      pi, // Start at 180 degrees (half circle)
      pi, // Sweep 180 degrees
      false,
      backgroundPaint,
    );

    // Draw the progress half-circle
    canvas.drawArc(
      Rect.fromCircle(
        center: Offset(size.width / 5, size.height / 3),
        radius: size.width / 5,
      ),
      pi, // Start at 180 degrees (half circle)
      pi * progress, // Sweep based on progress
      false,
      foregroundPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
