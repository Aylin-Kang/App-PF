import 'package:flutter/material.dart';
import '../widgets/favourites_widgets/song_item.dart';
import '../widgets/favourites_widgets/exercise_card.dart';
import '../widgets/favourites_widgets/chevron_icon.dart';
import '../widgets/favourites_widgets/custom_tab_bar.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({super.key});

  @override
  State<FavouritesScreen> createState() => _FavouritesState();
}

class _FavouritesState extends State<FavouritesScreen> {
  int _selectedTabIndex = 0;

  void _onTabSelected(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ViBands Header
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
                const SizedBox(height: 17),
                // Tus canciones section
                SizedBox(
                  width: double.infinity,
                  height: 158,
                  child: Column(
                    children: [
                      // Title with chevron
                      Container(
                        width: double.infinity,
                        height: 38,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        child: Row(
                          children: [
                            const Text(
                              'Tus canciones',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                height: 1.4,
                                letterSpacing: -0.32,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const ChevronIcon(),
                          ],
                        ),
                      ),
                      // Songs carousel
                      Container(
                        width: double.infinity,
                        height: 120,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              const SongItem(
                                imageUrl:
                                    'https://cdn.builder.io/api/v1/image/assets/TEMP/eef3ae0fb58bd1d236b8e1579d31e0821ebec2a6?width=152',
                                title: 'Canción 1',
                              ),
                              const SizedBox(width: 24),
                              const SongItem(
                                imageUrl:
                                    'https://cdn.builder.io/api/v1/image/assets/TEMP/eef3ae0fb58bd1d236b8e1579d31e0821ebec2a6?width=152',
                                title: 'Canción 2',
                              ),
                              const SizedBox(width: 24),
                              const SongItem(
                                imageUrl:
                                    'https://cdn.builder.io/api/v1/image/assets/TEMP/eef3ae0fb58bd1d236b8e1579d31e0821ebec2a6?width=152',
                                title: 'Canción 3',
                              ),
                              const SizedBox(width: 24),
                              const SongItem(
                                imageUrl:
                                    'https://cdn.builder.io/api/v1/image/assets/TEMP/eef3ae0fb58bd1d236b8e1579d31e0821ebec2a6?width=152',
                                title: 'Canción 4',
                              ),
                              const SizedBox(width: 24),
                              const SongItem(
                                imageUrl:
                                    'https://cdn.builder.io/api/v1/image/assets/TEMP/eef3ae0fb58bd1d236b8e1579d31e0821ebec2a6?width=152',
                                title: 'Canción 5',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 12),
                // Tus rutinas de ejercicios section
                SizedBox(
                  width: double.infinity,
                  height: 253,
                  child: Column(
                    children: [
                      // Header with chevron
                      Container(
                        width: double.infinity,
                        height: 38,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        child: Row(
                          children: [
                            const Text(
                              'Tus rutinas de ejercicios',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                height: 1.4,
                                letterSpacing: -0.32,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const ChevronIcon(),
                          ],
                        ),
                      ),
                      // Exercise cards carousel
                      Container(
                        width: double.infinity,
                        height: 215,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              const ExerciseCard(
                                imageUrl:
                                    'https://cdn.builder.io/api/v1/image/assets/TEMP/c54e8129232eb3cff8af88fee069b103c381e706?width=296',
                                duration: '25 min',
                                title: 'Fuerza',
                              ),
                              const SizedBox(width: 12),
                              const ExerciseCard(
                                imageUrl:
                                    'https://cdn.builder.io/api/v1/image/assets/TEMP/b64f5113210bd27c787ace1589e598f31f3b1a89?width=296',
                                duration: '20 min',
                                title: 'Running',
                              ),
                              const SizedBox(width: 12),
                              const ExerciseCard(
                                imageUrl:
                                    'https://cdn.builder.io/api/v1/image/assets/TEMP/27f36f315bdda84bc6cb2dc92dc9b17d6bd0a183?placeholderIfAbsent=true&apiKey=677f133cef174006b9cf3d7f5baa4598',
                                duration: '30 min',
                                title: 'Cardio',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Additional exercise cards section
                Container(
                  width: double.infinity,
                  height: 215,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const ExerciseCard(
                          imageUrl:
                              'https://cdn.builder.io/api/v1/image/assets/TEMP/0d2c370cd3f084bf3b7a762c7920fd179176c247?width=296',
                          duration: '15 min',
                          title: 'Yoga',
                        ),
                        const SizedBox(width: 12),
                        const ExerciseCard(
                          imageUrl:
                              'https://cdn.builder.io/api/v1/image/assets/TEMP/78f07275c09868fbd992b84f880372301176b6dd?width=296',
                          duration: '10 min',
                          title: 'Estiramiento',
                        ),
                        const SizedBox(width: 12),
                        const ExerciseCard(
                          imageUrl:
                              'https://cdn.builder.io/api/v1/image/assets/TEMP/dc07df035dfd3ed1788822819a1bcaeb0b818bd0?width=296',
                          duration: '20 min',
                          title: 'Brazos',
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 27),
              ],
            ),
          ),
        ),
      ),
      // Bottom Tab Bar
      bottomNavigationBar: CustomTabBar(
        selectedIndex: _selectedTabIndex,
        onTabSelected: _onTabSelected,
      ),
    );
  }
}