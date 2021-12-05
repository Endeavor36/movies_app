import 'package:flutter/material.dart';

class InsertScreen extends StatelessWidget {
  const InsertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Insert Screen',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Color(0xFF05103A),
    );
  }
}
