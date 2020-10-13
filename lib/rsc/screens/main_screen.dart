import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../pages/orders_page.dart';
import '../pages/favorite_page.dart';
import '../pages/profile_page.dart';

class MainScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MainScreenState();
  }
}

class _MainScreenState extends State<MainScreen>{

    int currentTabIndex=0;

    HomePage homePage;
    OrdersPage ordersPage;
    FavoritePage favorite;
    ProfilePage profilePage;

    List<Widget> pages;

    Widget currentPage;

    @override
  void initState() {
    super.initState();
    homePage=HomePage();
    ordersPage=OrdersPage();
    favorite= FavoritePage();
    profilePage=ProfilePage();

    pages=[homePage,ordersPage,favorite,profilePage];
    
    currentPage=homePage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (int index){
          setState(() {
            currentTabIndex=index;
            currentPage=pages[index];
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            backgroundColor: Colors.yellow,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text("Orders"),
            backgroundColor: Colors.yellow,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text("Favorite"),
            backgroundColor: Colors.yellow,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            backgroundColor: Colors.yellow,
          ),
        ],),
        body: currentPage,
    );
  }
  
}