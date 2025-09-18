
import 'package:flutter/material.dart';
import 'package:myapp/data/favourites_manager.dart';
import 'package:myapp/widgets/songs_widgets/song_item.dart';
import 'package:myapp/widgets/workouts_widgets/exercise_card.dart';

class FavouritesListScreen extends StatelessWidget {
  final String title;
  final String type;

  const FavouritesListScreen({
    super.key,
    required this.title,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    final items = type == 'song' ? FavouritesManager.getSongs() : FavouritesManager.getWorkouts();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontFamily: 'Inter',
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: items.isNotEmpty
          ? ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                if (type == 'song') {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: SongItem(
                      title: item['title'] ?? '',
                      imageUrl: item['imageUrl'] ?? '',
                      subtitle: item['artist'],
                    ),
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: ExerciseCard(
                      title: item['title'] ?? '',
                      imageUrl: item['imageUrl'] ?? '',
                      duration: item['duration'] ?? '',
                    ),
                  );
                }
              },
            )
          : Center(
              child: Text(
                'No tienes ${type == 'song' ? 'canciones' : 'rutinas de ejercicios'} en favoritos',
                style: const TextStyle(color: Color(0xFF49454F)),
              ),
            ),
    );
  }
}
