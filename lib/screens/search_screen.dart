import 'package:flutter/material.dart';
import '../widgets/search_widgets/search_header.dart';
import '../widgets/search_widgets/search_input.dart';
import '../widgets/search_widgets/menu_items.dart';
import '../widgets/search_widgets/custom_tab_bar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String searchText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                const SearchHeader(),
                const SizedBox(height: 26),
                SearchInput(
                  onChanged: (value) {
                    setState(() {
                      searchText = value.toLowerCase();
                    });
                  },
                ),
                const SizedBox(height: 17),
                MenuItems(searchText: searchText),
                const Spacer(),
              ],
            ),
            const Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: CustomTabBar(),
            ),
          ],
        ),
      ),
    );
  }
}