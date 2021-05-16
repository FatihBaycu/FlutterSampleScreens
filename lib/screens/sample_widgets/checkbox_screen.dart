import 'package:flutter/material.dart';

class CheckBoxScreen extends StatefulWidget {
  @override
  _CheckBoxScreenState createState() => _CheckBoxScreenState();
}

class _CheckBoxScreenState extends State<CheckBoxScreen> {
  bool kotlinValue=false;
  bool dartValue=false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("CheckBox Screen"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CheckboxListTile(
                title: Text("Kotlin"),
                value: kotlinValue,
                controlAffinity: ListTileControlAffinity.leading,
                checkColor: Colors.red,
                activeColor: Colors.deepPurple,
                onChanged: (bool data){
                  print("Kotlin selected : $data");
                  setState(() {
                    kotlinValue=data;
                  });
                },
              ),          CheckboxListTile(
                title: Text("Dart"),
                value: dartValue,
                controlAffinity: ListTileControlAffinity.leading,
                checkColor: Colors.red,
                activeColor: Colors.deepPurple,
                onChanged: (bool data){
                  print("Dart selected : $data");
                  setState(() {
                    dartValue=data;
                  });
                },
              ),
              ElevatedButton(onPressed: (){
                print("Dart value : $dartValue");
                print("Kotlin valu : $kotlinValue");
              }, child: Text("Show")),
            ],
          ),
        ),
      ),
    );
  }
}
