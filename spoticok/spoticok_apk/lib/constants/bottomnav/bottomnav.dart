import 'package:flutter/material.dart';
import 'package:spoticok_apk/constants/colors/colors.dart';
import 'package:spoticok_apk/constants/textstyle/textstyle.dart';
import 'package:spoticok_apk/view/home/spoticok_homepage.dart';
import 'package:spoticok_apk/view/home/spoticok_library.dart';
import 'package:spoticok_apk/view/home/spoticok_search.dart';
import 'package:spoticok_apk/view/home/spoticok_search1.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final screen = [
    const HomePage(),
    const SearchPageOne(),
    const LibraryPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: AppTextStyle.btnNavBarTextStyle,
        unselectedLabelStyle: AppTextStyle.btnNavBarTextStyle,
        selectedFontSize: 10,
        backgroundColor: ColorsCollection.blackGrey,
        unselectedFontSize: 10,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: ColorsCollection.whiteNeutral,
        unselectedItemColor: ColorsCollection.abuTextField,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music_outlined),
            label: 'Your Library',
          ),
        ],
      ),
    );
  }
}
