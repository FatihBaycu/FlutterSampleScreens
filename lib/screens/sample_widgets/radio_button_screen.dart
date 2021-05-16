import 'package:flutter/material.dart';

class RadioButtonScreen extends StatefulWidget {
  @override
  _RadioButtonScreenState createState() => _RadioButtonScreenState();
}

class _RadioButtonScreenState extends State<RadioButtonScreen> {

  int radioValue=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Radio Button Screen"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RadioListTile(
                title: Text("Galatasaray"),
                value: 1,
                groupValue: radioValue,
                activeColor: Colors.red,
                onChanged: (int data){
                  setState(() {
                    radioValue=data;
                  });
                  print("Galatasaray selected");
                },
              ),
              RadioListTile(
                title: Text("Fenerbahçe"),
                value: 2,
                groupValue: radioValue,
                activeColor: Colors.indigo,
                onChanged: (int data){
                  setState(() {
                    radioValue=data;
                  });
                  print("Fenerbahçe selected");
                },
              ),
              ElevatedButton(onPressed: (){
                if(radioValue==1){
                  print("Galatasaray selected");
                }if(radioValue==2){
                  print("Fenerbahçe selected");
                }
              }, child:Text("Show"))
            ],
          ),
        ),
      ),
    );
  }
}
