import 'package:better_calendar/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Better Calendar',
        theme: ThemeData(primaryColor: Colors.white),
        home: MainScreen());
  }
}

