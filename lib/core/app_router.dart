import "package:go_router/go_router.dart";
import '../screens/home_screen.dart';
import '../screens/search_screen.dart';
import '../screens/favourites_screen.dart';
import '../screens/songs_screen.dart';
import '../screens/workouts_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/search',
      name: 'search',
      builder: (context, state) => SearchScreen(),
    ),
    GoRoute(
      path: '/favourites',
      name: 'favourites',
      builder: (context, state) => FavouritesScreen(),
    ),
    GoRoute(
      path: '/songs',
      name: 'songs',
      builder: (context, state) => SongsScreen(),
    ),
    GoRoute(
      path: '/workouts',
      name: 'workouts',
      builder: (context, state) => WorkoutsScreen(),
    ),
  ],
);
