import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  @override
  _SwitchScreenState createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool switchKontrol=false;
  bool switchKontrol2=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Switch Kullanımı"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Switch(
                  value: switchKontrol,
                  activeTrackColor: Colors.lightGreenAccent,
                  activeColor: Colors.green,
                inactiveTrackColor: Colors.black54,
                inactiveThumbColor: Colors.black,
                onChanged: (veri){
                    setState(() {
                      switchKontrol=veri;
                    });
                    print("Switch : $veri");
                },
              ),      Switch(
                  value: switchKontrol2,
                  activeTrackColor: Colors.lightGreenAccent,
                  activeColor: Colors.green,
                inactiveTrackColor: Colors.black54,
                inactiveThumbColor: Colors.black,
                onChanged: (veri){
                    setState(() {
                      switchKontrol2=veri;
                    });
                    print("Switch : $veri");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
