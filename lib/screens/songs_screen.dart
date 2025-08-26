import 'package:flutter/material.dart';
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
                    Image.asset(
                      'assets/images/add_circle.png',
                      width: 24,
                      height: 24,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
              ),
              // Songs list
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: const [
                    SongItem(
                      title: 'Canción 1',
                      imageUrl:
                          'https://api.builder.io/api/v1/image/assets/TEMP/276bd0634fdfe4a63b3d5ee2998b168b5cfd51af?placeholderIfAbsent=true',
                    ),
                    SizedBox(height: 16),
                    SongItem(
                      title: 'Canción 2',
                      imageUrl:
                          'https://api.builder.io/api/v1/image/assets/TEMP/276bd0634fdfe4a63b3d5ee2998b168b5cfd51af?placeholderIfAbsent=true',
                    ),
                    SizedBox(height: 16),
                    SongItem(
                      title: 'Canción 3',
                      imageUrl:
                          'https://api.builder.io/api/v1/image/assets/TEMP/276bd0634fdfe4a63b3d5ee2998b168b5cfd51af?placeholderIfAbsent=true',
                    ),
                    SizedBox(height: 16),
                    SongItem(
                      title: 'Canción 4',
                      imageUrl:
                          'https://api.builder.io/api/v1/image/assets/TEMP/276bd0634fdfe4a63b3d5ee2998b168b5cfd51af?placeholderIfAbsent=true',
                    ),
                    SizedBox(height: 16),
                    SongItem(
                      title: 'Canción 5',
                      imageUrl:
                          'https://api.builder.io/api/v1/image/assets/TEMP/276bd0634fdfe4a63b3d5ee2998b168b5cfd51af?placeholderIfAbsent=true',
                    ),
                    SizedBox(height: 80),
                  ],
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
