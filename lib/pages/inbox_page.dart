import 'package:flutter/material.dart';

import 'todo_tile.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({super.key});

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            TodoTile(
              taskName:
                  "Double click or click checkbx to mark task as completedDouble click or click checkbx to mark task as completedDouble click or click checkbx to mark task as completedDouble click or click checkbx to mark task as completeds",
              taskCompleted: false,
              onChanged: (p0) {},
            ),
            TodoTile(
              taskName: "Double click or c",
              taskCompleted: false,
              onChanged: (p0) {},
            ),
          ],
        ),
      ),
    );
  }
}
