import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  @override
  _SwitchScreenState createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool switchControl=false;
  bool switchControl2=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Switch Screen"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Switch(
                  value: switchControl,
                  activeTrackColor: Colors.lightGreenAccent,
                  activeColor: Colors.green,
                inactiveTrackColor: Colors.black54,
                inactiveThumbColor: Colors.black,
                onChanged: (data){
                    setState(() {
                      switchControl=data;
                    });
                    print("Switch : $data");
                },
              ),      Switch(
                  value: switchControl2,
                  activeTrackColor: Colors.lightGreenAccent,
                  activeColor: Colors.green,
                inactiveTrackColor: Colors.black54,
                inactiveThumbColor: Colors.black,
                onChanged: (data){
                    setState(() {
                      switchControl2=data;
                    });
                    print("Switch : $data");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
