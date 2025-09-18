import 'package:flutter/material.dart';
import '../../data/mock_data.dart';
import '../songs_widgets/song_item.dart';
import '../workouts_widgets/exercise_card.dart';

class MenuItems extends StatelessWidget {
  final String searchText;

  const MenuItems({super.key, required this.searchText});

  @override
  Widget build(BuildContext context) {
    if (searchText.isEmpty) {
      return const SizedBox.shrink();
    }

    final filteredSongs = mockSongs.where((song) {
      return song.title.toLowerCase().contains(searchText.toLowerCase());
    }).toList();

    final filteredExercises = mockExercises.where((exercise) {
      return exercise.title.toLowerCase().contains(searchText.toLowerCase());
    }).toList();

    if (filteredSongs.isEmpty && filteredExercises.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      children: [
        ...filteredSongs.map((song) => SongItem(
              title: song.title,
              subtitle: song.artist,
              imageUrl: song.imageUrl,
            )),
        ...filteredExercises.map((exercise) => ExerciseCard(
              title: exercise.title,
              duration: exercise.duration,
              imageUrl: exercise.imageUrl,
            )),
      ],
    );
  }
}
