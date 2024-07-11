import 'package:flutter/material.dart';

import 'add_task_page.dart';
import 'todo_tile.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({super.key});

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  void addTask() {
    showDialog(
      context: context,
      builder: (context) {
        return AddTaskPage();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 22.0),
        child: SizedBox(
          width: 69,
          height: 69,
          child: FloatingActionButton(
            onPressed: addTask,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 40,
            ),
          ),
        ),
      ),
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
