import 'package:flutter/material.dart';

class FavoritePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _FavoritePageState();
  }
}

class _FavoritePageState extends State<FavoritePage>{
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Your Favorite Food"),
        backgroundColor: Colors.orange[300],
      ),
    );
  }
}