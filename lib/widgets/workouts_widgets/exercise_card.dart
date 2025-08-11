import 'package:flutter/material.dart';

class ExerciseCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String duration;

  const ExerciseCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFA2A2A2), width: 1),
      ),
      child: Row(
        children: [
          // Exercise image
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: const Color(0xFF2A2A2A),
                    child: const Icon(
                      Icons.fitness_center,
                      color: Color(0xFF747474),
                      size: 40,
                    ),
                  );
                },
              ),
            ),
          ),

          const SizedBox(width: 16),

          // Content section
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Exercise title
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.48,
                      fontFamily: 'Aboreto',
                      height: 34 / 24,
                    ),
                  ),

                  // Duration section
                  SizedBox(
                    height: 24,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            duration,
                            style: const TextStyle(
                              color: Color(0xFF49454F),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.4,
                              fontFamily: 'Roboto',
                              height: 16 / 12,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(width: 16),
        ],
      ),
    );
  }
}
