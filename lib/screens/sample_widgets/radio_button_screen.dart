import 'package:flutter/material.dart';

class RadioButtonScreen extends StatefulWidget {
  @override
  _RadioButtonScreenState createState() => _RadioButtonScreenState();
}

class _RadioButtonScreenState extends State<RadioButtonScreen> {

  int radioDeger=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Radio Button Kullanımı"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RadioListTile(
                title: Text("Galatasaray"),
                value: 1,
                groupValue: radioDeger,
                activeColor: Colors.red,
                onChanged: (int veri){
                  setState(() {
                    radioDeger=veri;
                  });
                  print("Galatasaray seçildi");
                },
              ),
              RadioListTile(
                title: Text("Fenerbahçe"),
                value: 2,
                groupValue: radioDeger,
                activeColor: Colors.indigo,
                onChanged: (int veri){
                  setState(() {
                    radioDeger=veri;
                  });
                  print("Fenerbahçe seçildi");
                },
              ),
              ElevatedButton(onPressed: (){
                if(radioDeger==1){
                  print("Galatasaray Seçildi");
                }if(radioDeger==2){
                  print("Fenerbahçe Seçildi");
                }
              }, child:Text("Göster"))
            ],
          ),
        ),
      ),
    );
  }
}
