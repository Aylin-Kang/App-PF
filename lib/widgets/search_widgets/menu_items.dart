import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MenuItems extends StatelessWidget {
  final String searchText;

  const MenuItems({super.key, required this.searchText});

  @override
  Widget build(BuildContext context) {
    final items = ['Rutinas', 'Canciones'];

    final filteredItems = items.where((item) {
      return item.toLowerCase().contains(searchText);
    }).toList();

    if (searchText.isEmpty || filteredItems.isEmpty) {
      return const SizedBox.shrink();
    }

    return SizedBox(
      width: double.infinity,
      height: filteredItems.length * 52,
      child: Column(
        children: filteredItems.map((title) => _buildMenuItem(context, title)).toList(),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        if (title == 'Rutinas') {
          context.go('/workouts');
        } else if (title == 'Canciones') {
          context.go('/songs');
        }
      },
      child: Container(
        height: 52,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Color(0xFFE6E6E6), width: 0.5),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Row(
            children: [
              SizedBox(
                width: 100,
                child: Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 12,
                    fontWeight:
                        title == 'Rutinas' ? FontWeight.w500 : FontWeight.w400,
                    height: 20 / 12,
                    color: Colors.white,
                  ),
                ),
              ),
              const Spacer(),
              Icon(
                Icons.chevron_right,
                size: 20,
                color: Colors.white.withAlpha(128),
              ),
            ],
          ),
        ),
      ),
    );
  }
}