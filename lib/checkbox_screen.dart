import 'package:flutter/material.dart';

class CheckBoxScreen extends StatefulWidget {
  @override
  _CheckBoxScreenState createState() => _CheckBoxScreenState();
}

class _CheckBoxScreenState extends State<CheckBoxScreen> {
  bool kotlinDurum=false;
  bool dartDurum=false;

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
                value: kotlinDurum,
                controlAffinity: ListTileControlAffinity.leading,
                checkColor: Colors.red,
                activeColor: Colors.deepPurple,
                onChanged: (bool veri){
                  print("Kotlin seçildi : $veri");
                  setState(() {
                    kotlinDurum=veri;
                  });
                },
              ),          CheckboxListTile(
                title: Text("Dart"),
                value: dartDurum,
                controlAffinity: ListTileControlAffinity.leading,
                checkColor: Colors.red,
                activeColor: Colors.deepPurple,
                onChanged: (bool veri){
                  print("Dart seçildi : $veri");
                  setState(() {
                    dartDurum=veri;
                  });
                },
              ),
              ElevatedButton(onPressed: (){
                print("Dart durum : $dartDurum");
                print("Kotlin durum : $kotlinDurum");
              }, child: Text("Göster")),
            ],
          ),
        ),
      ),
    );
  }
}
