import 'dart:async';

import 'package:flutter/material.dart';

class FocusPage extends StatefulWidget {
  const FocusPage({super.key});

  @override
  State<FocusPage> createState() => _FocusPageState();
}

class _FocusPageState extends State<FocusPage> {
  int seconds = 0;
  int minutes = 0;
  bool started = false;
  String padSec = "00";
  String padMin = "00";
  Timer? timer;

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      setState(() => seconds++);
      setState(() => padSec = seconds.toString().padLeft(2, '0'));
      setState(() => padMin = minutes.toString().padLeft(2, '0'));
      if (seconds == 59) {
        setState(() => seconds = -1);
        setState(() => minutes++);
      }
    });
  }

  void pauseTimer() {
    timer?.cancel();
    setState(() => started = true);
  }

  void stopTimer() {
    timer?.cancel();
    setState(() => seconds = 0);
    setState(() => minutes = 0);
    setState(() => padSec = seconds.toString().padLeft(2, '0'));
    setState(() => padMin = minutes.toString().padLeft(2, '0'));
    setState(() => started = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 320,
              height: 320,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  CircularProgressIndicator(
                      strokeWidth: 8, value: seconds / 60),
                  Center(
                    child: Text(
                      '$padMin:$padSec',
                      style: TextStyle(fontSize: 60),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 90),
            buildButton()
          ],
        ),
      ),
    );
  }

  Widget buildButton() {
    final isRunning = timer == null ? false : timer!.isActive;
    if (isRunning) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 150,
            height: 55,
            child: ElevatedButton(
              onPressed: pauseTimer,
              child: Text("Pause", style: TextStyle(fontSize: 18)),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 44, 104, 244),
                  foregroundColor: Colors.white),
            ),
          ),
          SizedBox(width: 20),
          SizedBox(
            width: 150,
            height: 55,
            child: ElevatedButton(
              onPressed: stopTimer,
              child: Text("Stop", style: TextStyle(fontSize: 18)),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey, foregroundColor: Colors.white),
            ),
          ),
        ],
      );
    } else {
      if (started) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 150,
              height: 55,
              child: ElevatedButton(
                onPressed: startTimer,
                child: Text("Resume", style: TextStyle(fontSize: 18)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 44, 104, 244),
                    foregroundColor: Colors.white),
              ),
            ),
            SizedBox(width: 20),
            SizedBox(
              width: 150,
              height: 55,
              child: ElevatedButton(
                onPressed: stopTimer,
                child: Text("Stop", style: TextStyle(fontSize: 18)),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[500],
                    foregroundColor: Colors.white),
              ),
            ),
          ],
        );
      } else {
        return SizedBox(
          width: 150,
          height: 55,
          child: ElevatedButton(
            onPressed: startTimer,
            child: Text("Start", style: TextStyle(fontSize: 18)),
            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 44, 104, 244),
                foregroundColor: Colors.white),
          ),
        );
      }
    }
  }
}
