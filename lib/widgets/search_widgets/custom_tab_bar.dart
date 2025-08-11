import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 78,
      decoration: BoxDecoration(
        color: Colors.black,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1 * 255),
            offset: const Offset(0, -0.5),
            blurRadius: 0,
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
                  child: const Icon(Icons.home, color: Colors.white, size: 28),
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
                  child: const Icon(
                    Icons.search,
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
                    context.go('/favourites');
                  },
                  child: const Icon(
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
                    child: const Icon(
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
                  child: const Icon(
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
