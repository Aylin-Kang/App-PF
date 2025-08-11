import 'package:flutter/material.dart';

class BannerSection extends StatelessWidget {
  final double screenWidth;

  const BannerSection({
    super.key,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    final bannerWidth = screenWidth <= 991 ? screenWidth - 32 : 343.0;
    final bannerHeight = screenWidth <= 640 ? 400.0 : 528.0;

    return Container(
      width: bannerWidth,
      height: bannerHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: const DecorationImage(
          image: NetworkImage('https://cdn.builder.io/api/v1/image/assets/TEMP/5ef6070201967ef4d6897fbbe29a6581102ddea1?width=686'),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 20,
            top: screenWidth <= 640 ? 80 : 114,
            child: SizedBox(
              width: screenWidth <= 640 ? bannerWidth - 40 : 187,
              height: 150,
              child: Text(
                'Muevete al ritmo de la música',
                style: TextStyle(
                  color: const Color(0xFFFFFFFF),
                  fontSize: screenWidth <= 640 ? 28 : 36,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Inter',
                  letterSpacing: -0.72,
                  height: 1.4,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}