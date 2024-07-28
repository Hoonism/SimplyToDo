import 'package:flutter/material.dart';

class AddTaskPage extends StatelessWidget {
  final controller;
  VoidCallback onSave;

  AddTaskPage({
    super.key,
    required this.controller,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      alignment: Alignment.bottomCenter,
      insetPadding: EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12)),
      ),
      backgroundColor: Color.fromARGB(255, 41, 41, 41),
      child: Container(
        height: 120,
        width: 1000,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 14.0, right: 10, top: 5),
              child: TextField(
                autofocus: true,
                controller: controller,
                decoration: InputDecoration(
                  hintText: "Add Task",
                  border: InputBorder.none,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Row(
                    children: [
                      Icon(Icons.calendar_month,
                          color: Color.fromARGB(255, 44, 104, 244), size: 26),
                      SizedBox(width: 4),
                      Text("Today",
                          style: TextStyle(
                              color: Color.fromARGB(255, 44, 104, 244),
                              fontSize: 16)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: IconButton(
                      onPressed: onSave,
                      icon: Icon(Icons.add_circle,
                          color: Color.fromARGB(255, 44, 104, 244), size: 34)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
