import 'package:flutter/material.dart';

class StatPage extends StatelessWidget {
  const StatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Stat Page",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
