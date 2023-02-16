import 'package:flutter/material.dart';
import 'package:portfolio_web/homepage_screen.dart';
import 'package:portfolio_web/projects_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      title: 'hasanerdil portfolio',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.indigo),
      home: const HomePage(),
      routes: {
        "home": (context) => HomePage(),
        "projects": (context) => ProjectsScreen(),
      },
    );
  }
}
