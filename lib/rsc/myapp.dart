import 'package:flutter/material.dart';
import './homescreen.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food Delivery",
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        accentColor: Colors.orangeAccent
      ),
      home: HomeScreen(),
    );
  }
}