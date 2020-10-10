import 'package:flutter/material.dart';
import 'package:food_delivery/rsc/widgets/food_category.dart';
import 'package:food_delivery/rsc/widgets/home_top_info.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 50.0,left: 20.0,right:20.0),
        children: <Widget>[
              HomeTopInfo(),
              Container(width: 5.0,),
              FoodCategory(),
        ],
      ),
    );
  }
}