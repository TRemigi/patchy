import 'package:flutter/material.dart';

class PatchPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //todo implement paint
  }

  @override
  bool shouldRepaint(covariant PatchPainter oldDelegate) => true;
}

class CanvasPath {
  final Path path = Path();
  Paint paint;
  final List<Offset> drawPoints;

  CanvasPath({
    required this.paint,
    required this.drawPoints,
  });
}
