import 'package:flutter/material.dart';

class StatPage extends StatelessWidget {
  const StatPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Container(
              width: 130,
              height: 130,
              child: CircleAvatar(
                backgroundColor: Colors.grey[900],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text("Username", style: TextStyle(fontSize: 20)),
            SizedBox(height: 55),
            SizedBox(
              height: width * 0.15,
              width: width * 0.95,
              child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                      child: Text("Subscribe to Premium",
                          style: TextStyle(fontSize: 18)))),
            ),
            SizedBox(height: width * 8 / 300),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: width * 0.46,
                  width: width * 0.46,
                  child: DecoratedBox(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "376",
                            style: TextStyle(fontSize: 48),
                          ),
                          Text(
                            "Tasks Completed",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                SizedBox(
                  height: width * 0.46,
                  width: width * 0.46,
                  child: DecoratedBox(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "24.5",
                            style: TextStyle(fontSize: 48),
                          ),
                          Text(
                            "Focus Hours",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: width * 8 / 300),
            SizedBox(
              height: 350,
              width: width * 0.95,
              child: DecoratedBox(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Task Completion",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "24",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      Text(
                        "This Week",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: width * 8 / 300),
            SizedBox(
              height: 350,
              width: width * 0.95,
              child: DecoratedBox(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Focus Hours",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "8h 37m",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      Text(
                        "This Week",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: width * 8 / 300),
            SizedBox(
              height: 350,
              width: width * 0.95,
              child: DecoratedBox(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Activity Chart",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
