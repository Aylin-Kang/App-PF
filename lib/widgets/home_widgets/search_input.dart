import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white, width: 1),
        color: Colors.black,
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 12, right: 12),
            child: Icon(Icons.search, color: Color(0xFF828282), size: 24),
          ),
          const Expanded(
            child: Text(
              'Búsqueda',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xFF828282),
                height: 1.5,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
    );
  }
}
