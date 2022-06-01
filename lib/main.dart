import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mentalhealth_app/navigationBar/bottom_navigation_bar.dart';
import 'package:mentalhealth_app/pages/consultant_page.dart';
import 'package:mentalhealth_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/buttomNavigationBar': (context) => BottomNavigationBarPage(),
        '/consultant': (context) => const ConsultantPage(),
      },
      home: BottomNavigationBarPage(),
    );
  }
}
