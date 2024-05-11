// ignore: file_names
import 'package:caffeine/common/app_colors.dart';
import 'package:caffeine/features/home/presentation/pages/Home_page.dart';
import 'package:caffeine/features/Settings/presentation/pages/Settings_page.dart';
import 'package:caffeine/features/archive/presentation/pages/archive_page.dart';
import 'package:caffeine/features/favorites/presentation/pages/favorites_page.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _selectedIndex = 0;

  void changeIndex(int index) {
    _selectedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // List of pages corresponding to bottom navigation bar items.
    List<Widget> widgetOption = [
      const HomePage(),
      const FavoritesPage(),
      const ArchivePage(),
      const SettingsPage()
    ];

    return Scaffold(
      // Displaying the selected page.
      body: Center(
        child: widgetOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: buttomNavBar(),
    );
  }

  // Method to build the bottom navigation bar.

  Container buttomNavBar() {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0), topRight: Radius.circular(0)),
          color: AppColors.backgroundColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        child: GNav(
          gap: 8,
          padding: const EdgeInsets.all(16),
          backgroundColor: AppColors.backgroundColor,
          color: AppColors.primaryColor,
          activeColor: AppColors.backgroundColor,
          tabBackgroundColor: AppColors.primaryColor,
          tabs: const [
            GButton(
              icon: Icons.home,
              iconSize: 24,
              text: 'Home',
            ),
            GButton(
              icon: Icons.favorite_border,
              iconSize: 24,
              text: 'Favorite',
            ),
            GButton(
              icon: Icons.archive_rounded,
              iconSize: 24,
              text: 'Archive',
            ),
            GButton(icon: Icons.settings, iconSize: 24, text: 'Settings'),
          ],
          textStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "Oswald",
              color: AppColors.backgroundColor),
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;

              // print(index);
            });
          },
        ),
      ),
    );
  }
}
