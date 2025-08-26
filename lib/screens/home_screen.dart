import 'package:flutter/material.dart';
import '../widgets/common/custom_tab_bar.dart';
import '../widgets/home_widgets/app_title.dart';
import '../widgets/home_widgets/banner_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView( // <-- Agrega este widget aquí
          child: Column(
            children: [
              const AppTitle(),
              const SizedBox(height: 24),
              BannerSection(screenWidth: screenWidth),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomTabBar(currentIndex: 0),
    );
  }
}