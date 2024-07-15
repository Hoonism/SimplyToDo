import 'package:flutter/material.dart';
import 'pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
      theme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.dark(
          primary: Color.fromARGB(255, 44, 104, 244), // 주요 색상
          secondary: Color.fromARGB(255, 44, 104, 244), // 보조 색상
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 20.0),
          bodyMedium: TextStyle(fontSize: 18.0),
          bodySmall: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
