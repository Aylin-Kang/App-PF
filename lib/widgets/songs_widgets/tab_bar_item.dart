import 'package:flutter/material.dart';

class TabBarItem extends StatelessWidget {
  final String iconUrl;
  final EdgeInsets? padding;

  const TabBarItem({super.key, required this.iconUrl, this.padding});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: padding ?? const EdgeInsets.fromLTRB(26, 12, 26, 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(iconUrl, width: 24, height: 24, fit: BoxFit.contain),
          ],
        ),
      ),
    );
  }
}
