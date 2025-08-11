import 'package:flutter/material.dart';

class TabBarItem extends StatelessWidget {
  final IconData icon;
  final bool isSelected;
  final VoidCallback onTap;

  const TabBarItem({
    super.key,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 76,
        height: 44,
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 12),
        child: Icon(
          icon,
          size: 24,
          color: isSelected ? Colors.white : const Color(0xFFB3B3B3),
        ),
      ),
    );
  }
}
