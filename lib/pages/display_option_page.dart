import 'package:flutter/material.dart';

class DisplayOptionPage extends StatelessWidget {
  const DisplayOptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 50.0),
      child: UnconstrainedBox(
        alignment: Alignment.topRight,
        child: SizedBox(
          width: 202,
          child: Dialog(
            insetPadding: EdgeInsets.all(0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
            backgroundColor: Color.fromARGB(255, 41, 41, 41),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.5),
                ),
                ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                  dense: true,
                  visualDensity: VisualDensity(horizontal: 0, vertical: 1),
                  leading: Icon(
                    Icons.timelapse,
                    color: Color.fromARGB(255, 44, 104, 244),
                  ),
                  title: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.0),
                    child: Text(
                      "Chronological",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                  dense: true,
                  visualDensity: VisualDensity(horizontal: 0, vertical: 1),
                  leading: Icon(
                    Icons.folder,
                    color: Color.fromARGB(255, 44, 104, 244),
                  ),
                  title: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.0),
                    child: Text(
                      "Folder",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                  dense: true,
                  visualDensity: VisualDensity(horizontal: 0, vertical: 1),
                  leading: Icon(
                    Icons.calendar_month,
                    color: Color.fromARGB(255, 44, 104, 244),
                  ),
                  title: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.0),
                    child: Text(
                      "Calendar",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 12),
                  dense: true,
                  visualDensity: VisualDensity(horizontal: 0, vertical: 1),
                  leading: Icon(
                    Icons.dashboard_customize,
                    color: Color.fromARGB(255, 44, 104, 244),
                  ),
                  title: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.0),
                    child: Text(
                      "Custom",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.5),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
