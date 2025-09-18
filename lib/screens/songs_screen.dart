import 'package:flutter/material.dart';
import 'package:myapp/data/mock_data.dart';
import '../widgets/common/custom_tab_bar.dart';
import '../widgets/songs_widgets/song_item.dart';

class SongsScreen extends StatelessWidget {
  const SongsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              // Header
              Container(
                width: double.infinity,
                height: 52,
                padding: const EdgeInsets.only(left: 16),
                alignment: Alignment.centerLeft,
                child: const Text(
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
              // Title + Add button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Canciones',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        height: 1.33,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      shape: const CircleBorder(),
                      child: InkWell(
                        customBorder: const CircleBorder(),
                        onTap: () {}, // empty onTap for visual effect only
                        child: Image.asset(
                          'assets/images/add_circle.png',
                          width: 24,
                          height: 24,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Songs list
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: mockSongs.length,
                  itemBuilder: (context, index) {
                    final song = mockSongs[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: SongItem(
                        title: song.title,
                        subtitle: song.artist,
                        imageUrl: song.imageUrl,
                      ),
                    );
                  },
                ),
              ),
              // Global bottom tab bar
              const CustomTabBar(currentIndex: 3),
            ],
          ),
        ),
      ),
    );
  }
}
