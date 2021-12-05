import 'package:flutter/material.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Movies Screen',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Color(0xFF05103A),
    );
  }
}
