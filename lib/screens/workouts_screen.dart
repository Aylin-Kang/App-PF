import 'package:flutter/material.dart';
import 'package:myapp/data/mock_data.dart';
import '../widgets/workouts_widgets/exercise_card.dart';
import '../widgets/common/custom_tab_bar.dart';

class WorkoutsScreen extends StatelessWidget {
  const WorkoutsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SizedBox(
          child: Column(
            children: [
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Rutinas',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      height: 1.33,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ListView.builder(
                    itemCount: mockExercises.length,
                    itemBuilder: (context, index) {
                      final exercise = mockExercises[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: ExerciseCard(
                          imageUrl: exercise.imageUrl,
                          title: exercise.title,
                          duration: exercise.duration,
                        ),
                      );
                    },
                  ),
                ),
              ),
              const CustomTabBar(currentIndex: 4),
            ],
          ),
        ),
      ),
    );
  }
}
