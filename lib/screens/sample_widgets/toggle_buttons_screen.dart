import 'package:flutter/material.dart';

class ToggleButtonScreen extends StatefulWidget {
  @override
  _ToggleButtonScreenState createState() => _ToggleButtonScreenState();
}

class _ToggleButtonScreenState extends State<ToggleButtonScreen> {
  var toggleStaus=[false,true,false];
  int selectedToogleIndex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ToggleButtons(
                children: [
                  Icon(Icons.looks_one),
                  Icon(Icons.looks_two),
                  Icon(Icons.looks_3),
                ],
                isSelected: toggleStaus,
                color: Colors.pink,
                selectedColor: Colors.yellow,
                onPressed: (int secilenIndexs){
                  setState(() {
                    toggleStaus[secilenIndexs]=!toggleStaus[secilenIndexs];
                  });
                  selectedToogleIndex=secilenIndexs;
                  print("${secilenIndexs+1}. selected toogle");
                },
              ),
              ElevatedButton(onPressed: (){
                print("Last ${selectedToogleIndex+1}. selected toogle");
              }, child: Text("Show"))
            ],
          ),
        ),
      ),
    );
  }
}
