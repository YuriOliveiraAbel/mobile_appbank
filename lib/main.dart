import 'package:flutter/material.dart';
import 'package:mob_appbank/home/home_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'APP BANK',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Color.fromRGBO(0, 102, 75, 1)
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
