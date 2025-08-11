import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomTabBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabSelected;

  const CustomTabBar({
    super.key,
    required this.selectedIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78,
      decoration: const BoxDecoration(
        color: Color(0xFF000000),
        boxShadow: [
          BoxShadow(
            color: Color(0x1A000000),
            offset: Offset(0, -0.5),
            blurRadius: 10,
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            height: 44,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(8),
                  ),
                  onPressed: () {
                    context.go('/home');
                  },
                  child: Icon(Icons.home, color: Colors.white, size: 28),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(8),
                  ),
                  onPressed: () {
                    context.go('/search');
                  },
                  child: Icon(Icons.search, color: Colors.white, size: 28),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(8),
                  ),
                  onPressed: () {
                    context.go('/favourites');
                  },
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(8),
                  ),
                  onPressed: () {
                    context.go('/songs');
                  },
                  child: Opacity(
                    opacity: 1,
                    child: Icon(
                      Icons.music_note,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(8),
                  ),
                  onPressed: () {
                    context.go('/workouts');
                  },
                  child: Icon(
                    Icons.fitness_center,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 34),
        ],
      ),
    );
  }
}
