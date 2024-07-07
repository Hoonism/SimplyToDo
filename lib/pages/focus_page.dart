import 'package:flutter/material.dart';

class FocusPage extends StatefulWidget {
  const FocusPage({super.key});

  @override
  State<FocusPage> createState() => _FocusPageState();
}

class _FocusPageState extends State<FocusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Builder(builder: (context) {
          return SizedBox(
            width: 150,
            height: 55,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Start", style: TextStyle(fontSize: 19)),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 44, 104, 244),
                  foregroundColor: Colors.white),
            ),
          );
        }),
      ),
    );
  }
}
