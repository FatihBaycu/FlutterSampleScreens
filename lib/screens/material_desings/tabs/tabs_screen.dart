import 'package:flutter/material.dart';
import 'package:flutter_recipe/screens/material_desings/tabs/page1.dart';
import 'package:flutter_recipe/screens/material_desings/tabs/page2.dart';
import 'package:flutter_recipe/screens/material_desings/tabs/page3.dart';

class TabsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyTabsScreen(),
    );
  }
}

class MyTabsScreen extends StatefulWidget{
  @override
  _MyTabsScreen createState()=>_MyTabsScreen();

}
 class _MyTabsScreen extends State<MyTabsScreen>{
  @override
  Widget build(BuildContext context) {
  return DefaultTabController(
    length: 3,
    child: Scaffold(
      appBar: AppBar(
        title: Text("Tabs Screen"),
        bottom:TabBar(
          tabs: [
            Tab(icon:Icon(Icons.looks_one)),
            Tab(icon:Icon(Icons.looks_two)),
            Tab(icon:Icon(Icons.looks_3)),

          ],
        ) ,
      ),
      body:TabBarView(
        children: [
          Page1(),
          Page2(),
          Page3(),
        ],
      ),

        ),
  );
  }

 }