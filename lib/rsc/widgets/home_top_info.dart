import 'package:flutter/material.dart';

class HomeTopInfo extends StatelessWidget{
  final TextStyle textStyle=TextStyle(fontSize: 32.0,color: Colors.lightBlueAccent,fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0,top: 10.0),
      child: Row(
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
            ),
    );
  }
}