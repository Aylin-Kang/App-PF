import 'package:flutter/material.dart';

class ExerciseCard extends StatelessWidget {
  final String imageUrl;
  final String duration;
  final String title;

  const ExerciseCard({
    super.key,
    required this.imageUrl,
    required this.duration,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Exercise image
          Container(
            width: 148,
            height: 148,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xFF333333), // Placeholder color
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                color: const Color(0xFF333333),
                child: const Icon(
                  Icons.fitness_center,
                  color: Colors.white,
                  size: 48,
                ),
              ),
            ),
          ),

          const SizedBox(height: 12),

          // Info section
          SizedBox(
            width: 148,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Duration
                Text(
                  duration,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    height: 1.4,
                    color: const Color.fromARGB(128, 205, 205, 205),
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),

                const SizedBox(height: 2),

                // Title
                Text(
                  title,
                  style: const TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    height: 1.4,
                    color: Color(0xFFFFFFFF),
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
