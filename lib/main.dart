import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import './screens/insert_screen.dart';
import './screens/movies_screen.dart';
import './screens/settings_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;

  final screens = [
    MoviesScreen(),
    InsertScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = [
      const Icon(
        Icons.home,
        size: 30,
      ),
      const Icon(
        Icons.add,
        size: 30,
      ),
      const Icon(
        Icons.settings,
        size: 30,
      ),
    ];

    return MaterialApp(
      title: 'Movies App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Movies App'),
          centerTitle: true,
          elevation: 0,
          backgroundColor: const Color(0xFF05103A),
        ),
        body: screens[index],
        backgroundColor: const Color(0xFF05103A),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            iconTheme: const IconThemeData(color: Colors.white),
          ),
          child: CurvedNavigationBar(
            index: index,
            items: items,
            color: const Color(0xFF040d2e),
            buttonBackgroundColor: const Color(0xFF4ACFEF),
            backgroundColor: Colors.transparent,
            animationCurve: Curves.easeInOut,
            animationDuration: const Duration(milliseconds: 400),
            onTap: (index) => setState(() => this.index = index),
            height: 60,
          ),
        ),
      ),
    );
  }
}
