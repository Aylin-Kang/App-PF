import 'package:flutter/material.dart';
import '../widgets/common/custom_tab_bar.dart';
import '../widgets/search_widgets/search_header.dart';
import '../widgets/search_widgets/search_input.dart';
import '../widgets/search_widgets/menu_items.dart';

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SearchHeader(),
            const SizedBox(height: 8),
            SearchInput(
              onChanged: (value) {
                setState(() {
                  searchText = value.toLowerCase();
                });
              },
            ),
            const SizedBox(height: 16),
            Expanded(
              child: SingleChildScrollView(
                child: MenuItems(searchText: searchText),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomTabBar(currentIndex: 1),
    );
  }
}
