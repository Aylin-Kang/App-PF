import 'package:flutter/material.dart';

class ChevronIcon extends StatelessWidget {
  const ChevronIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      shape: const CircleBorder(),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: () {}, // efecto visual, no hace nada
        child: SizedBox(
          width: 20,
          height: 20,
          child: Stack(
            children: [
              // Background circle
              Container(
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                  color: Color(0xFF000000),
                  shape: BoxShape.circle,
                ),
              ),
              // Chevron icon
              Positioned(
                left: 7,
                top: 3,
                child: SizedBox(
                  width: 7,
                  height: 14,
                  child: CustomPaint(
                    painter: ChevronPainter(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChevronPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    final path = Path();
    path.moveTo(4.77561, 6.999);
    path.lineTo(0.789529, 3.01292);
    path.cubicTo(0.675626, 2.89902, 0.675626, 2.71434, 0.789529, 2.60044);
    path.lineTo(1.32575, 2.06422);
    path.cubicTo(1.43965, 1.95031, 1.62433, 1.95031, 1.73823, 2.06422);
    path.lineTo(6.46677, 6.79276);
    path.cubicTo(6.58067, 6.90666, 6.58067, 7.09133, 6.46677, 7.20523);
    path.lineTo(1.73823, 11.9338);
    path.cubicTo(1.62433, 12.0477, 1.43965, 12.0477, 1.32575, 11.9338);
    path.lineTo(0.789529, 11.3976);
    path.cubicTo(0.675626, 11.2836, 0.675626, 11.099, 0.789529, 10.9851);
    path.lineTo(4.77561, 6.999);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}