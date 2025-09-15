import 'dart:ui' as ui;
import 'package:flutter/material.dart';

// CustomPainter for drawing the navigation bar shape
class BottomNavBarPainter extends StatelessWidget {
  final int currentIndex;

  const BottomNavBarPainter({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(double.infinity, 108),
      painter: _EazyBarPainter(currentIndex: currentIndex),
    );
  }
}

// Optimize CustomPainter using pre-calculated constants
class _EazyBarPainter extends CustomPainter {
  final int currentIndex;
  static const double _baseWidth = 393;
  static const Color _selectedColor = Color(0xFF2A72AD);
  static final Paint _shadowPaint = Paint()
    ..color = Colors.black.withOpacity(0.25)
    ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 4);
  static final Paint _barPaint = Paint()..color = Colors.white;
  static final Paint _housePaint = Paint()..color = Colors.white;
  static final Paint _dotPaint = Paint()..color = _selectedColor;

  // Calculate paths once and store them
  static final Path _barPath = _createBarPath();
  static final Path _housePath = _createHousePath();

  _EazyBarPainter({required this.currentIndex});

  static Path _createBarPath() {
    final path0 = Path();
    path0.moveTo(128.451, 27.8816);
    path0.lineTo(0, 32.535);
    path0.lineTo(0, 106);
    path0.lineTo(393, 106);
    path0.lineTo(393, 32.535);
    path0.lineTo(262.013, 27.9204);
    path0.cubicTo(245.787, 27.3488, 230.435, 35.2715, 221.5, 48.828);
    path0.lineTo(214.71, 59.1296);
    path0.cubicTo(212.707, 62.1694, 209.728, 64.4364, 206.264, 65.5575);
    path0.cubicTo(199.621, 67.7075, 192.441, 67.5092, 185.927, 64.9956);
    path0.lineTo(184.34, 64.3831);
    path0.cubicTo(181.092, 63.1298, 178.262, 60.9879, 176.174, 58.2021);
    path0.lineTo(167.39, 46.484);
    path0.cubicTo(158.241, 34.2789, 143.694, 27.3293, 128.451, 27.8816);
    path0.close();
    return path0;
  }

  static Path _createHousePath() {
    final house = Path();
    house.moveTo(9, -3.99);
    house.lineTo(2.45, -9.23);
    house.cubicTo(1.17, -10.25, -0.83, -10.26, -2.1, -9.24);
    house.lineTo(-8.65, -3.99);
    house.cubicTo(-9.59, -3.24, -10.16, -1.74, -9.96, -0.56);
    house.lineTo(-8.7, 6.98);
    house.cubicTo(-8.41, 8.67, -6.84, 10, -5.13, 10);
    house.lineTo(5.47, 10);
    house.cubicTo(7.16, 10, 8.76, 8.64, 9.05, 6.97);
    house.lineTo(10.31, -0.57);
    house.cubicTo(10.49, -1.74, 9.92, -3.24, 9, -3.99);
    house.close();
    return house;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final double scaleX = size.width / _baseWidth;

    // Draw the bar shape in a scaled horizontal space
    canvas.save();
    canvas.scale(scaleX, 1.0);

    // Draw shadow
    _drawBarShadow(canvas);

    // Draw the bar
    canvas.drawPath(_barPath, _barPaint);

    canvas.restore();

    // Draw house icon and dot
    _drawHouseAndDot(canvas, size, scaleX);
  }

  void _drawBarShadow(Canvas canvas) {
    final shadowPath = _barPath.shift(const Offset(0, 0));

    canvas.save();
    final topBand = Rect.fromLTWH(0, 0, _baseWidth, 70);
    final band = Path()..addRect(topBand);
    final clip = Path.combine(ui.PathOperation.difference, band, _barPath);
    canvas.clipPath(clip);
    canvas.drawPath(shadowPath, _shadowPaint);
    canvas.restore();
  }

  void _drawHouseAndDot(Canvas canvas, Size size, double scaleX) {
    // Calculate center of the circular button (x = 195 over 393 scaled)
    final double centerX = size.width * (195 / _baseWidth);
    final center = Offset(centerX, 27);

    // Draw house icon
    canvas.save();
    canvas.translate(center.dx, center.dy);
    canvas.drawPath(_housePath, _housePaint);
    canvas.restore();

    // Draw bottom dot if home is active
    if (currentIndex == 0) {
      canvas.drawCircle(
        Offset(centerX, size.height * 0.9768519),
        size.width * 0.02417303,
        _dotPaint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant _EazyBarPainter oldDelegate) {
    return oldDelegate.currentIndex != currentIndex;
  }
}