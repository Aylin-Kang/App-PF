import 'package:flutter/material.dart';
import '../widgets/home_widgets/app_title.dart';
import '../widgets/home_widgets/banner_section.dart';
import '../widgets/home_widgets/custom_tab_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
            // ViBands Title
            const Positioned(
              left: 0,
              top: 42,
              child: AppTitle(),
            ),

            // Banner Section
            Positioned(
              left: 16,
              top: 164,
              child: BannerSection(
                screenWidth: screenWidth,
              ),
            ),

            // Tab Bar
            Positioned(
              left: 0,
              bottom: 0,
              child: CustomTabBar(
                screenWidth: screenWidth,
              ),
            ),
          ],
        ),
      ),
    );
  }
}