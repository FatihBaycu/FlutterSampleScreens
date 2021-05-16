import 'package:flutter/material.dart';
import 'package:flutter_recipe/screens/drawer/page1.dart';
import 'package:flutter_recipe/screens/drawer/page2.dart';
import 'package:flutter_recipe/screens/drawer/page3.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyDrawerScreen(),
    );
  }
}

class MyDrawerScreen extends StatefulWidget {
  @override
  _MyDrawerScreen createState() => _MyDrawerScreen();
}

class _MyDrawerScreen extends State<MyDrawerScreen> {

  var pagelist=[Page1(),Page2(),Page3()];
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer Screen"),),
      body:selectedIndex>2?pagelist[2]:pagelist[selectedIndex],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text("Header Desing",style: TextStyle(color: Colors.white,fontSize: 30),),
              decoration: BoxDecoration(color: Colors.deepPurple),
            ),
            ListTile(
              title: Text("Page 1"),
              onTap: (){
                setState(() {
                  selectedIndex=0;
                });
                Navigator.pop(context);
                },
            ),
            ListTile(
              title: Text("Page 2"),
              onTap: (){
                setState(() {
                  selectedIndex=1;
                });
                Navigator.pop(context);
                },
            ),  ListTile(
              title: Text("Page 3"),
              onTap: (){
                setState(() {
                  selectedIndex=2;
                });
                Navigator.pop(context);
                },
            ),
          ],
        ),
      ),
    );
  }
}
