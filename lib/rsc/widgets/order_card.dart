import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class OrderCard extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
 
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 25.0),
      child: Card(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            
                Container(
                  height: 60.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2.0,color: Colors.grey),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: <Widget>[
                      InkWell(
                        onTap: (){},
                        child: Icon(Icons.keyboard_arrow_up,size: 18.0,color: Colors.grey,)),
                      Text("0",style: TextStyle(fontSize: 16.0,color: Colors.brown),),
                     InkWell(
                       onTap: (){},
                       child: Icon(Icons.keyboard_arrow_down,size: 18.0,color: Colors.grey,)),

                    ],
                  ),
                ),
                SizedBox(width: 20.0,),
                Container(
                  height: 70.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/pizzashop.jpg"),
                    fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(35.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 5.0,
                        offset: Offset(5.0, 5.0)
                      ),
                    ],
                    ),
                ),
                SizedBox(width: 20.0,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  Text("Pizza Shop",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
                  SizedBox(height: 7.0,),
                  Text("\$3",style: TextStyle(fontSize: 16.0,color: Colors.orange),),
                  SizedBox(height: 7.0,),
                  Container(
                    height: 25.0,
                    width: 120.0,
                    child: ListView(
      
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text("Chicken",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                            SizedBox(width: 10.0,),
                            InkWell(
                              onTap: (){},
                              child: Text("X",textScaleFactor: 1.5,style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),))
                          ],
                        ),
                        SizedBox(width: 15.0,),
                        Row(
                          children: <Widget>[
                            Text("Chicken",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                            SizedBox(width: 10.0,),
                            InkWell(
                              onTap: (){},
                              child: Text("X",textScaleFactor: 1.5,style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),))
                          ],
                        ),
                         SizedBox(width: 15.0,),
                         Row(
                          children: <Widget>[
                            Text("Chicken",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                            SizedBox(width: 10.0,),
                            InkWell(
                              onTap: (){},
                              child: Text("X",textScaleFactor: 1.5,style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),))
                          ],
                        ),
                      ],
                    ),
                  ),
                 
                ],),
                Spacer(),
                 IconButton(icon: Icon(Icons.cancel),
                   onPressed: null,
                alignment: Alignment.topRight,
                  )
          ],
        ),),
    );
  }
}