import 'package:flutter/material.dart';

class TabBarItem extends StatelessWidget {
  final IconData icon;
  final bool isSelected;
  final double? opacity;
  final VoidCallback? onPressed;

  const TabBarItem({
    super.key,
    required this.icon,
    required this.isSelected,
    this.opacity,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 76,
        height: 44,
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 12),
        child: Center(child: Icon(icon, size: 24, color: _getIconColor())),
      ),
    );
  }

  Color _getIconColor() {
    if (opacity != null) {
      return Colors.white.withValues(alpha: (opacity! * 255).roundToDouble());
    }
    return isSelected ? Colors.white : Colors.white;
  }
}
