import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mentalhealth_app/pages/category_page.dart';
import 'package:mentalhealth_app/pages/home_page.dart';
import 'package:mentalhealth_app/pages/mail_page.dart';
import 'package:mentalhealth_app/pages/person_page.dart';

class BottomNavigationBarPage extends StatefulWidget {
  int? currentPage;
  BottomNavigationBarPage({Key? key, this.currentPage}) : super(key: key);

  @override
  State<BottomNavigationBarPage> createState() =>
      _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 0;
  final screens = [
    const HomePage(),
    const CategoryPage(),
    const MailPage(),
    const PersonPage()
  ];

  @override
  Widget build(BuildContext context) {
    index = widget.currentPage ?? index;
    final items = <Widget>[
      const Icon(Icons.home, size: 30),
      const Icon(Icons.category_outlined, size: 30),
      const Icon(Icons.mail, size: 30),
      const Icon(Icons.person, size: 30),
    ];
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: screens[index],
      // body: Center(
      //   // child: Image.network(
      //   //   'https://images.unsplash.com/photo-1649605184337-c4dc52c6e32e?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=408',
      //   //   height: double.infinity,
      //   //   width: double.infinity,
      //   //   fit: BoxFit.cover,
      //   // ),
      //   child: ElevatedButton(
      //     style: ElevatedButton.styleFrom(
      //         onPrimary: Colors.black,
      //         primary: Colors.white,
      //         minimumSize: const Size(250, 56)),
      //     onPressed: () {
      //       final navigationState = navigationKey.currentState!;
      //       navigationState.setPage(0);
      //     },
      //     child: const Text(
      //       'Go to 0',
      //       style: TextStyle(fontSize: 20),
      //     ),
      //   ),
      // ),
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(iconTheme: const IconThemeData(color: Colors.white)),
        child: CurvedNavigationBar(
          buttonBackgroundColor: Colors.blue,
          backgroundColor: Colors.transparent,
          color: Colors.blue,
          key: navigationKey,
          index: index,
          height: 60,
          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 300),
          items: items,
          onTap: (index) => setState(() {
            this.index = index;
            widget.currentPage = index;
          }),
        ),
      ),
    );
  }
}
