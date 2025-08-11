import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  final Function(String) onChanged;

  const SearchInput({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white, width: 1),
        color: Colors.black,
      ),
      child: Row(
        children: [
          const SizedBox(width: 12),
          const Icon(Icons.search, size: 24, color: Color(0xFF828282)),
          const SizedBox(width: 12),
          Expanded(
            child: TextField(
              onChanged: onChanged,
              style: const TextStyle(
                fontFamily: 'Inter',
                fontSize: 16,
                color: Colors.white,
              ),
              decoration: const InputDecoration(
                hintText: 'Búsqueda',
                hintStyle: TextStyle(color: Color(0xFF828282)),
                border: InputBorder.none,
                isDense: true,
              ),
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
    );
  }
}