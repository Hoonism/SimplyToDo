import 'package:flutter/material.dart';
import 'package:habit_tracker/pages/display_option_page.dart';
import 'add_task_page.dart';
import 'focus_page.dart';
import 'inbox_page.dart';
import 'stat_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  int _selectedIndex = 0;
  final List _pages = [InboxPage(), FocusPage(), StatPage()];

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void addTask() {
    showDialog(
      context: context,
      builder: (context) {
        return AddTaskPage();
      },
    );
  }

  void changeDisplayMode() {
    showDialog(
      context: context,
      builder: (context) {
        return DisplayOptionPage();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Tasks",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 21),
          ),
          actions: [
            IconButton(
                onPressed: changeDisplayMode,
                icon: const Icon(Icons.more_horiz, size: 32))
          ]),
      body: _pages[_selectedIndex],
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
      drawer: const Drawer(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 45),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10),
              child: ListTile(
                leading: Icon(
                  Icons.inbox,
                  color: Color.fromARGB(255, 44, 104, 244),
                ),
                title: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.0),
                  child: Text(
                    "Inbox",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10),
              child: ListTile(
                leading: Icon(
                  Icons.list_alt,
                  color: Color.fromARGB(255, 44, 104, 244),
                ),
                title: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.0),
                  child: Text(
                    "Programming",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10),
              child: ListTile(
                leading: Icon(
                  Icons.list_alt,
                  color: Color.fromARGB(255, 44, 104, 244),
                ),
                title: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.0),
                  child: Text(
                    "School",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10),
              child: ListTile(
                leading: Icon(
                  Icons.list_alt,
                  color: Color.fromARGB(255, 44, 104, 244),
                ),
                title: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.0),
                  child: Text(
                    "Market",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        currentIndex: _selectedIndex,
        onTap: navigateBottomBar,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.check_box_rounded, size: 30),
              label: "",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.timer, size: 30),
              label: "",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_rounded, size: 30),
              label: "",
              backgroundColor: Colors.white),
        ],
      ),
    );
  }
}
