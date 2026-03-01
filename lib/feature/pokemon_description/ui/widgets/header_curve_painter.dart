import 'package:flutter/material.dart';

class HeaderCurvePainter extends CustomPainter {
  HeaderCurvePainter({required this.fillColor, this.curveHeight = 32});

  final Color fillColor;
  final double curveHeight;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = fillColor
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(size.width / 2, curveHeight, size.width, 0);
    path.lineTo(size.width, size.height);

    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant HeaderCurvePainter oldDelegate) {
    return oldDelegate.fillColor != fillColor ||
        oldDelegate.curveHeight != curveHeight;
  }
}
