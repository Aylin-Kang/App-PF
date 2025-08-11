import 'package:flutter/material.dart';

class SongItem extends StatelessWidget {
  final String title;
  final String imageUrl;

  const SongItem({super.key, required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFA2A2A2), width: 1),
      ),
      child: Row(
        children: [
          // Song image
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(imageUrl, fit: BoxFit.cover),
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
                  // Title
                  Container(
                    height: 25,
                    width: double.infinity,
                    alignment: Alignment.topLeft,
                    child: Text(
                      title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        height: 1.27,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),

                  // Heart icon (in place of play button)
                  Container(
                    height: 62,
                    width: double.infinity,
                    alignment: Alignment.centerLeft,
                    child: const Icon(
                      Icons.favorite_border,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
