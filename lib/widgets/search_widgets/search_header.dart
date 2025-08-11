import 'package:flutter/material.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 52,
      padding: const EdgeInsets.only(left: 16),
      alignment: Alignment.centerLeft,
      child: const SizedBox(
        height: double.infinity,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'ViBands',
            style: TextStyle(
              fontFamily: 'Rhodium Libre',
              fontSize: 15,
              fontWeight: FontWeight.w400,
              height: 1.4,
              letterSpacing: 0.4,
              color: Color(0xFF747474),
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}
