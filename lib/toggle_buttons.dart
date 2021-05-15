import 'package:flutter/material.dart';

class ToggleButtonScreen extends StatefulWidget {
  @override
  _ToggleButtonScreenState createState() => _ToggleButtonScreenState();
}

class _ToggleButtonScreenState extends State<ToggleButtonScreen> {
  var toogleDurumlar=[false,true,false];
  int secilenToggleIndexs=0;
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
                isSelected: toogleDurumlar,
                color: Colors.pink,
                selectedColor: Colors.yellow,
                onPressed: (int secilenIndexs){
                  setState(() {
                    toogleDurumlar[secilenIndexs]=!toogleDurumlar[secilenIndexs];
                  });
                  secilenToggleIndexs=secilenIndexs;
                  print("${secilenIndexs+1}. toggle seçildi");
                },
              ),
              ElevatedButton(onPressed: (){
                print("En son ${secilenToggleIndexs+1}. toggle seçildi");
              }, child: Text("Göster"))
            ],
          ),
        ),
      ),
    );
  }
}
