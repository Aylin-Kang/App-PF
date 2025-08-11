import 'package:flutter/material.dart';
import '../widgets/workouts_widgets/exercise_card.dart';
import '../widgets/workouts_widgets/custom_tab_bar.dart';

class WorkoutsScreen extends StatelessWidget {
  const WorkoutsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SizedBox(
          child: Column(
            children: [
              // Header section
              Container(
                width: double.infinity,
                height: 52,
                padding: const EdgeInsets.only(left: 16),
                alignment: Alignment.centerLeft,
                child: const SizedBox(
                  height: double.infinity,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'ViBands',
                      style: TextStyle(
                        fontFamily: 'Rhodium Libre',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        height: 1.4,
                        letterSpacing: 0.4,
                        color: Color(0xFF747474),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ),

              // Exercise list section
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 32),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ListView(
                    children: const [
                      ExerciseCard(
                        imageUrl:
                            'https://cdn.builder.io/api/v1/image/assets/TEMP/27f36f315bdda84bc6cb2dc92dc9b17d6bd0a183?placeholderIfAbsent=true&apiKey=677f133cef174006b9cf3d7f5baa4598',
                        title: 'CARDIO',
                        duration: '30 MIN',
                      ),
                      SizedBox(height: 16),
                      ExerciseCard(
                        imageUrl:
                            'https://cdn.builder.io/api/v1/image/assets/TEMP/f4e9c49216f34a3cb1d1775dabdd02a4620ff06e?placeholderIfAbsent=true&apiKey=677f133cef174006b9cf3d7f5baa4598',
                        title: 'FUERZA',
                        duration: '25 MIN',
                      ),
                      SizedBox(height: 16),
                      ExerciseCard(
                        imageUrl:
                            'https://cdn.builder.io/api/v1/image/assets/TEMP/70de9ae8a66a343abdc3f003888b704ed717115c?placeholderIfAbsent=true&apiKey=677f133cef174006b9cf3d7f5baa4598',
                        title: 'YOGA',
                        duration: '15 MIN',
                      ),
                      SizedBox(height: 16),
                      ExerciseCard(
                        imageUrl:
                            'https://cdn.builder.io/api/v1/image/assets/TEMP/da896b3893d69db1cb52affa4ddd837e9478cf71?placeholderIfAbsent=true&apiKey=677f133cef174006b9cf3d7f5baa4598',
                        title: 'ESTIRAMIENTO',
                        duration: '10 MIN',
                      ),
                      SizedBox(height: 16),
                      ExerciseCard(
                        imageUrl:
                            'https://cdn.builder.io/api/v1/image/assets/TEMP/9b9bbfbc1f21353b5ea3ac9b6a40c9b866df83d0?placeholderIfAbsent=true&apiKey=677f133cef174006b9cf3d7f5baa4598',
                        title: 'RUNNING',
                        duration: '20 MIN',
                      ),
                      SizedBox(height: 8),
                    ],
                  ),
                ),
              ),

              // Bottom tab bar
              CustomTabBar(screenWidth: screenWidth),
            ],
          ),
        ),
      ),
    );
  }
}
