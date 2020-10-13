import 'package:flutter/material.dart';

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
    );
  }
}