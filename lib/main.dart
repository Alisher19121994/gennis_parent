import 'package:flutter/material.dart';
import 'package:parent_app/pages/mainPages/entrance/group_page.dart';
import 'package:parent_app/pages/mainPages/homePage/home_page.dart';
import 'package:parent_app/pages/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashPage(),
      routes: {
        HomePage.id: (context) => const HomePage(),
        GroupPage.id: (context) => const GroupPage(),
      },
    );
  }
}
