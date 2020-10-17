import 'package:flutter/material.dart';
import 'package:food_delivery/rsc/pages/signin_page.dart';
import 'package:food_delivery/rsc/widgets/order_card.dart';

class OrdersPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _OrdersPageState();
  }
}

class _OrdersPageState extends State<OrdersPage>{
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Your Orders"),
        backgroundColor: Colors.orange[300],
  
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        children: <Widget>[
            OrderCard(),
            OrderCard(),
            OrderCard(),
            OrderCard(),
            OrderCard(),
             OrderCard(), 
        ],
      ),
      bottomNavigationBar: _buidTotalCart(), 
    );
  }
  Widget _buidTotalCart(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
        margin: EdgeInsets.only(top: 20.0),
        height: 250.0,
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("roti",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.black),),
                Text("23.0",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.black),),
              ],
            ),
            SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("pizza",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.black),),
                Text("23.0",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.black),),
              ],
            ),
            SizedBox(height: 10.0,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Tax Total",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.black),),
                Text("2.0",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.black),),
              ],
            ),
            Divider( height: 40.0,color: Colors.grey,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Sub Total",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.black),),
                Text("48.0",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.black),),
              
              ],
            ),
            SizedBox(height: 15.0,),
            Container(
              width: 350,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: RaisedButton(
                  color: Colors.blueAccent,
                  child: Text("Go AHead with Payment",style: TextStyle(color: Colors.white,fontSize: 18.0),),
                  onPressed: (){
                    setState(() {
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                        return SigninPage();
                      }));
                  });
                  }
            ),
            ),
            ],
        ),
    );
  }
}