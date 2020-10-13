import 'package:flutter/material.dart';
import 'package:../food_delivery/rsc/data/food_data.dart';
import 'package:../food_delivery/rsc/widgets/bought_food.dart';
import 'package:../food_delivery/rsc/widgets/food_category.dart';
import 'package:../food_delivery/rsc/widgets/home_top_info.dart';
import 'package:../food_delivery/rsc/widgets/search_field.dart';
import 'package:../food_delivery/rsc/models/food_model.dart';


class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage>{

  List<Food> _foods=foods;

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
               Column(
                  children: _foods.map(_buildFoodItems).toList(),
                ),
        ],
      ),
    );
  }

  Widget _buildFoodItems(Food food){
    return Container(
      margin: EdgeInsets.only(bottom: 15.0),
      child: BoughtFood(
        id: food.id,
        imagePath: food.imagePath,
        name: food.name,
        category: food.category,
        discount: food.discount,
        price: food.price,
        rating: food.rating,
      ),
    );
  }
}