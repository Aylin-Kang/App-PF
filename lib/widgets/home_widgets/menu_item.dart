import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const MenuItem({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 52,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Color(0xFFE6E6E6), width: 0.5),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
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
                    color: Colors.white,
                    height: 1.67,
                  ),
                ),
              ),
              const Spacer(),
              const Icon(Icons.chevron_right, color: Colors.white, size: 20),
            ],
          ),
        ),
      ),
    );
  }
}
