import 'package:bottom_bar/bottom_bar.dart';
import 'package:cookify/screens/home/home.dart';
import 'package:cookify/screens/meal/meal.dart';
import 'package:cookify/screens/settings/settings.dart';
import 'package:cookify/screens/showcase/showcase.dart';
import 'package:cookify/utilities/constants.dart';
import 'package:flutter/material.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

List screens = [
  HomeScreen(),
  ShowcaseScreen(),
  const MealScreen(),
  const SettingsScreen()
];

class _NavScreenState extends State<NavScreen> {
  int currentindex = 0;
  onchanged(value) {
    setState(() {
      currentindex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentindex],
      bottomNavigationBar: BottomBar(
        selectedIndex: currentindex,
        onTap: onchanged,
        items: const <BottomBarItem>[
          BottomBarItem(
              icon: Icon(Icons.home), activeColor: orange, title: Text('Home')),
          BottomBarItem(
              icon: Icon(Icons.menu_book_rounded),
              activeColor: orange,
              title: Text('Showcase')),
          BottomBarItem(
              icon: Icon(Icons.fastfood),
              activeColor: orange,
              title: Text('Meal')),
          BottomBarItem(
              icon: Icon(Icons.person),
              activeColor: orange,
              title: Text('Settings')),
        ],
      ),
    );
  }
}
