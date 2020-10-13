import 'package:flutter/material.dart';
import 'package:food_delivery/rsc/screens/main_screen.dart';
import '../rsc/screens/main_screen.dart';
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
      home: MainScreen(),
    );
  }
}