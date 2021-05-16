import 'package:flutter/material.dart';

class ListViewStaticScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MyListViewStaticScreen(),
    );
  }
}

class MyListViewStaticScreen extends StatefulWidget{
  @override
  _ListViewStaticScreen createState()=>_ListViewStaticScreen();
}

class _ListViewStaticScreen extends State<MyListViewStaticScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sabit Liste"),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
                  ListTile(
                    leading: Icon(Icons.wb_sunny),
                    title:Text("Güneş"),
                    subtitle: Text("Güneş alt başık"),
                    trailing: Icon(Icons.navigate_next),
                    onTap:(){
                      print("Güneş Tıklandı");
                  }
                  ),   ListTile(
                    leading: Icon(Icons.star),
                    title:Text("Yıldız"),
                    subtitle: Text("Yıldız alt başık"),
                    trailing: Icon(Icons.navigate_next),
                    onTap:(){
                      print("Yıldız Tıklandı");
                  }
                  ),
              SizedBox(
                height: 50,
                child: GestureDetector(
                  onTap: (){print("Card Tıklandı");},
                  child: Card(
                    child: Row(
                      children: [
                        Text("Card Tasarım"),
                        Spacer(),
                        Icon(Icons.more_vert),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){print("Merhaba Tıklandı");},
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(color: Colors.red),
                  child: Text("Merhaba"),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
