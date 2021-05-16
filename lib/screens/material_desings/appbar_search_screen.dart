import 'package:flutter/material.dart';

class AppBarSearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyAppBarSearchScreen(),
    );
  }
}

class MyAppBarSearchScreen extends StatefulWidget{
  @override
  _MyAppBarScreen createState() =>_MyAppBarScreen();
}

class _MyAppBarScreen extends State<MyAppBarSearchScreen> {
  bool aramaYapiliyormu=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: aramaYapiliyormu?
        TextField(
          decoration: InputDecoration(hintText: "Arayın"),
          onChanged: (aramaSonucu){
            print("Arama Sonucu $aramaSonucu");
          },
        )
            :Text("Appbar arama"),
        actions: [
          aramaYapiliyormu?
      IconButton(
      icon: Icon(Icons.cancel),
      onPressed: (){
        setState(() {
          aramaYapiliyormu=false;

        });
      },
    )
          :IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              setState(() {
                aramaYapiliyormu=true;

              });
            },
          ),
        ],
      ),
    );
  }
}