import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomTabBar extends StatelessWidget {
  final int currentIndex;

  const CustomTabBar({super.key, required this.currentIndex});

  void _onTabSelected(BuildContext context, int index) {
    switch (index) {
      case 0:
        GoRouter.of(context).go('/home'); // ruta de HomeScreen
        break;
      case 1:
        GoRouter.of(context).go('/search'); // ruta de búsqueda
        break;
      case 2:
        GoRouter.of(context).go('/favourites'); // ruta de favoritos
        break;
      case 3:
        GoRouter.of(context).go('/songs'); // ruta de canciones
        break;
      case 4:
        GoRouter.of(context).go('/workouts'); // ruta de ejercicios
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(5, (index) {
          IconData icon;
          switch (index) {
            case 0:
              icon = Icons.home;
              break;
            case 1:
              icon = Icons.search;
              break;
            case 2:
              icon = Icons.favorite;
              break;
            case 3:
              icon = Icons.music_note;
              break;
            case 4:
              icon = Icons.fitness_center;
              break;
            default:
              icon = Icons.circle;
          }
          return IconButton(
            icon: Icon(
              icon,
              color: currentIndex == index ? Colors.white : Colors.grey,
            ),
            onPressed: () => _onTabSelected(context, index),
          );
        }),
      ),
    );
  }
}
