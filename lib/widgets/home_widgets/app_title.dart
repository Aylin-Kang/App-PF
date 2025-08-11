import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      height: 90,
      alignment: Alignment.center,
      child: Text(
        'ViBands',
        style: TextStyle(
          color: const Color(0xFFFFFFFF),
          fontSize: _getFontSize(screenWidth),
          fontWeight: FontWeight.w400,
          fontFamily: 'Rhodium Libre',
          letterSpacing: 0.4,
          height: 1.4,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  double _getFontSize(double screenWidth) {
    if (screenWidth <= 640) {
      return 48;
    } else if (screenWidth <= 991) {
      return 56;
    } else {
      return 64;
    }
  }
}
