import 'package:flutter/material.dart';
import 'package:flutter_recipe/screens/material_desings/bottom_navigation_bar/page1.dart';
import 'package:flutter_recipe/screens/material_desings/bottom_navigation_bar/page2.dart';
import 'package:flutter_recipe/screens/material_desings/bottom_navigation_bar/page3.dart';

class BottomNavigationBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyBottomNavigationBarScreen(),
    );
  }
}

class MyBottomNavigationBarScreen extends StatefulWidget{
  @override
  _BottomNavigationBarScreen createState()=>_BottomNavigationBarScreen();

  }

class _BottomNavigationBarScreen extends State<MyBottomNavigationBarScreen>{
  var pageList=[Page1(),Page2(),Page3()];
  int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("Bottom Navigation Bar"),),
        body: pageList[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.looks_one),label: "One"),
            BottomNavigationBarItem(icon: Icon(Icons.looks_two),label: "Two"),
            BottomNavigationBarItem(icon: Icon(Icons.looks_3),label: "Theree"),
          ],
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black38,
          currentIndex: selectedIndex,
          onTap: (index){
            setState(() {
              selectedIndex=index;
            });
          },
        ),

      );
  }
}

