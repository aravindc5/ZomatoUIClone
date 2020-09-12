import 'package:flutter/material.dart';

import './ui/ui.dart';
import 'widgets/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  final pages = [HomePage(), SecondPage(), ThirdPage(), FourthPage()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zomato UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: allDestinations.map((BottomNavigationDetails b) {
            return BottomNavigationBarItem(
                icon: Icon(
                  b.icon,
                  color: Colors.grey[700],
                ),
                backgroundColor: Colors.white,
                title: Text(
                  b.title,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[500],
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.bold,
                  ),
                ));
          }).toList(),
        ),
      ),
    );
  }
}
