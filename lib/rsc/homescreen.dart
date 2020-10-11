import 'package:flutter/material.dart';
import 'package:food_delivery/rsc/widgets/bought_food.dart';
import 'package:food_delivery/rsc/widgets/food_category.dart';
import 'package:food_delivery/rsc/widgets/home_top_info.dart';
import 'package:food_delivery/rsc/widgets/search_field.dart';

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
              SizedBox(height: 5.0,),
              FoodCategory(),
              SizedBox(height: 20.0,),
              SearchField(),
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Frequently Bought Item",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),),
                  GestureDetector(onTap: (){},child: Text("View All",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0,color: Colors.orange),))
                ],
              ),
              SizedBox(height: 20.0,),
              BoughtFood(),
        ],
      ),
    );
  }
}