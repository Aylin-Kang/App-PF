class FavouritesManager {
  static final List<Map<String, String>> favouritesSongs = [];
  static final List<Map<String, String>> favouritesWorkouts = [];

  static void addFavourite(String title, String imageUrl, String type, {String duration = ''}) {
    if (type == 'song') {
      if (!favouritesSongs.any((item) => item['title'] == title)) {
        favouritesSongs.add({'title': title, 'imageUrl': imageUrl});
      }
    } else if (type == 'workout') {
      if (!favouritesWorkouts.any((item) => item['title'] == title)) {
        favouritesWorkouts.add({'title': title, 'imageUrl': imageUrl, 'duration': duration});
      }
    }
  }

  static void removeFavourite(String title, String type) {
    if (type == 'song') {
      favouritesSongs.removeWhere((item) => item['title'] == title);
    } else if (type == 'workout') {
      favouritesWorkouts.removeWhere((item) => item['title'] == title);
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