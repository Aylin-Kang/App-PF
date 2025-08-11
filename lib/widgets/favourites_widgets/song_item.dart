import 'package:flutter/material.dart';

class SongItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  const SongItem({super.key, required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Circular image
          Container(
            width: 76,
            height: 76,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(38),
              border: Border.all(color: const Color(0xFFA2A2A2), width: 1),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(38),
              child: Container(
                color: const Color(0xFFA2A2A2), // Placeholder color
                child: const Icon(
                  Icons.music_note,
                  color: Colors.white,
                  size: 32,
                ),
              ),
            ),
          ),

          const SizedBox(height: 8),

          // Song title
          SizedBox(
            width: 76,
            child: Text(
              title,
              style: const TextStyle(
                fontFamily: 'Inter',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 1.4,
                letterSpacing: 0.136,
                color: Color(0xFFFFFFFF),
              ),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
