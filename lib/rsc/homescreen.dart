import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen>{
  final TextStyle textStyle=TextStyle(fontSize: 32.0,color: Colors.lightBlueAccent,fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 50.0,left: 20.0,right:20.0),
        children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("What Would",style: textStyle),
                      Text("You Like to Order?",style: textStyle,)
                    ],
                  ),
                  IconButton(icon: Icon(Icons.notifications_active,size: 50,color: Theme.of(context).accentColor,), onPressed: (){})
                ],
          )
        ],
      ),
    );
  }
}