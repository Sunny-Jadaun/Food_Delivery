import 'package:flutter/material.dart';

class BoughtFood extends StatefulWidget{
  final String id;
  final String name;
  final String imagePath;
  final String category;
  final double price;
  final double discount;
  final double rating;
BoughtFood({this.id,this.name,this.imagePath,this.category,this.price,this.discount,this.rating});

  @override
  State<StatefulWidget> createState() {
    return _BoughtFoodState();
  }
}
class _BoughtFoodState extends State<BoughtFood>{

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
          child: Stack(
        children: <Widget>[
          Container(
            height: 200.0,
            width: 340.0,
            child: Image.asset(widget.imagePath,fit: BoxFit.cover,),
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
                    child: Container(
              height: 50.0,
              width: 340.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.black,Colors.black38
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter
                )
              ),
            ),
          ),
          Positioned(
            left: 10.0,
            bottom: 10.0,
            
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  Text(widget.name,style: TextStyle(fontSize: 18.0,color: Colors.grey,fontWeight: FontWeight.bold)),
                  Row(
                    children: <Widget>[
                      Icon(Icons.star,color: Theme.of(context).accentColor,size: 16.0,),
                      Icon(Icons.star,color: Theme.of(context).accentColor,size: 16.0,),
                      Icon(Icons.star,color: Theme.of(context).accentColor,size: 16.0,),
                      Icon(Icons.star,color: Theme.of(context).accentColor,size: 16.0,),
                      Icon(Icons.star,color: Theme.of(context).accentColor,size: 16.0,),
                      Icon(Icons.star,color: Theme.of(context).accentColor,size: 16.0,),
                      SizedBox(width: 5.0,),
                      Text("(" + widget.rating.toString() + "Reviews)",style: TextStyle(color: Colors.grey,))
                    ],
                  )
                ],),
              SizedBox(width: 50.0,),
                Column(
                  children: <Widget>[
                    Text("\$"+widget.price.toString(),style: TextStyle(fontSize: 18.0,color: Colors.orange,fontWeight: FontWeight.bold)),
                    Text("Min Order",style: TextStyle(fontSize: 18.0,color: Colors.grey))
                  ],
                )
              ],
            ))
        ],
      ),
    );
  }
}