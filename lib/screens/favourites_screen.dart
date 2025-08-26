import 'package:flutter/material.dart';
import '../widgets/favourites_widgets/song_item.dart';
import '../widgets/favourites_widgets/exercise_card.dart';
import '../widgets/favourites_widgets/chevron_icon.dart';
import '../widgets/common/custom_tab_bar.dart';
import 'package:myapp/data/favourites_manager.dart';

class FavouritesScreen extends StatefulWidget {
  const FavouritesScreen({super.key});

  @override
  State<FavouritesScreen> createState() => _FavouritesState();
}

class _FavouritesState extends State<FavouritesScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {}); // Refresca la pantalla cuando volvés a ella
  }

  @override
  Widget build(BuildContext context) {
    final songs = FavouritesManager.getSongs();
    final workouts = FavouritesManager.getWorkouts();

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                ),
              ),
              const SizedBox(height: 17),
              // Canciones
              SizedBox(
                width: double.infinity,
                height: 158,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // <-- Alineación a la izquierda
                  children: [
                    Container(
                      width: double.infinity,
                      height: 38,
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Row(
                        children: const [
                          Text(
                            'Tus canciones',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10),
                          ChevronIcon(),
                        ],
                      ),
                    ),
                    Expanded(
                      child: songs.isNotEmpty
                          ? ListView.separated(
                              scrollDirection: Axis.horizontal,
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              itemCount: songs.length,
                              separatorBuilder: (_, __) => const SizedBox(width: 24),
                              itemBuilder: (context, index) {
                                final song = songs[index];
                                return SongItem(
                                  title: song['title'] ?? '',
                                  imageUrl: song['imageUrl'] ?? '',
                                );
                              },
                            )
                          : const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Align(
                                alignment: Alignment.centerLeft, // <-- Alineación a la izquierda y centrado vertical
                                child: Text(
                                  "No tienes canciones en favoritos",
                                  style: TextStyle(color: Color(0xFF49454F)),
                                ),
                              ),
                            ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              // Ejercicios
              SizedBox( // <-- Envuelve la columna en un SizedBox para definir su altura
                width: double.infinity,
                height: 158,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // <-- Alineación a la izquierda
                  children: [
                    Container(
                      width: double.infinity,
                      height: 38,
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Row(
                        children: const [
                          Text(
                            'Tus rutinas de ejercicios',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 10),
                          ChevronIcon(),
                        ],
                      ),
                    ),
                    Expanded(
                      child: workouts.isNotEmpty
                          ? ListView.separated(
                              scrollDirection: Axis.horizontal,
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              itemCount: workouts.length,
                              separatorBuilder: (_, __) => const SizedBox(width: 12),
                              itemBuilder: (context, index) {
                                final workout = workouts[index];
                                return ExerciseCard(
                                  title: workout['title'] ?? '',
                                  imageUrl: workout['imageUrl'] ?? '',
                                  duration: workout['duration'] ?? '',
                                );
                              },
                            )
                          : const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Align(
                                alignment: Alignment.centerLeft, // <-- Alineación a la izquierda y centrado vertical
                                child: Text(
                                  "No tienes rutinas de ejercicios en favoritos",
                                  style: TextStyle(color: Color(0xFF49454F)),
                                ),
                              ),
                            ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 27),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomTabBar(currentIndex: 2),
    );
  }
}