
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class FavouritesManager {
  static final List<Map<String, String>> favouritesSongs = [];
  static final List<Map<String, String>> favouritesWorkouts = [];

  static const String _songsKey = 'favouritesSongs';
  static const String _workoutsKey = 'favouritesWorkouts';

  static Future<void> init() async {
    await _loadFavourites();
  }

  static Future<void> _loadFavourites() async {
    final prefs = await SharedPreferences.getInstance();
    final songsString = prefs.getStringList(_songsKey);
    if (songsString != null) {
      favouritesSongs.clear();
      favouritesSongs.addAll(songsString.map((s) => Map<String, String>.from(json.decode(s))));
    }
    final workoutsString = prefs.getStringList(_workoutsKey);
    if (workoutsString != null) {
      favouritesWorkouts.clear();
      favouritesWorkouts.addAll(workoutsString.map((s) => Map<String, String>.from(json.decode(s))));
    }
  }

  static Future<void> _saveSongs() async {
    final prefs = await SharedPreferences.getInstance();
    final songsString = favouritesSongs.map((s) => json.encode(s)).toList();
    await prefs.setStringList(_songsKey, songsString);
  }

  static Future<void> _saveWorkouts() async {
    final prefs = await SharedPreferences.getInstance();
    final workoutsString = favouritesWorkouts.map((s) => json.encode(s)).toList();
    await prefs.setStringList(_workoutsKey, workoutsString);
  }

  static void addFavourite(String title, String imageUrl, String type, {String duration = ''}) {
    if (type == 'song') {
      if (!favouritesSongs.any((item) => item['title'] == title)) {
        favouritesSongs.add({'title': title, 'imageUrl': imageUrl});
        _saveSongs();
      }
    } else if (type == 'workout') {
      if (!favouritesWorkouts.any((item) => item['title'] == title)) {
        favouritesWorkouts.add({'title': title, 'imageUrl': imageUrl, 'duration': duration});
        _saveWorkouts();
      }
    }
  }

  static void removeFavourite(String title, String type) {
    if (type == 'song') {
      favouritesSongs.removeWhere((item) => item['title'] == title);
      _saveSongs();
    } else if (type == 'workout') {
      favouritesWorkouts.removeWhere((item) => item['title'] == title);
      _saveWorkouts();
    }
  }

  static bool isFavourite(String title, String type) {
    if (type == 'song') {
      return favouritesSongs.any((item) => item['title'] == title);
    } else if (type == 'workout') {
      return favouritesWorkouts.any((item) => item['title'] == title);
    }
    return false;
  }

  static List<Map<String, String>> getSongs() => favouritesSongs;
  static List<Map<String, String>> getWorkouts() => favouritesWorkouts;
}
