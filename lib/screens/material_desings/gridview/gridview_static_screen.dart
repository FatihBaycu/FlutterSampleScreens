import 'package:flutter/material.dart';

class GridViewStaticScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyGridViewStaticScreen(),
    );
  }
}

class MyGridViewStaticScreen extends StatefulWidget {
  @override
  _MyGridViewStaticScreen createState() => _MyGridViewStaticScreen();
}

class _MyGridViewStaticScreen extends State<MyGridViewStaticScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sabit GridView"),),
      body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 2/1,
          children: [
            GestureDetector(
              onTap: (){print("Güneş Tıklandı");},
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.wb_sunny),
                    Text("Güneş")
                  ],
                ),
              ),
            ),     Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.brightness_2),
                  Text("Ay")
                ],
              ),
            ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.star), Text("Yıldız")],
            ),
          ),
        ],
      ),
    );
  }
}
