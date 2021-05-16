import 'package:flutter/material.dart';

class GestureDetectorScreen extends StatefulWidget {
  @override
  _GestureDetectorScreenState createState() => _GestureDetectorScreenState();
}

class _GestureDetectorScreenState extends State<GestureDetectorScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(title: Text("Gesture Detector"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){print("Container clicked");},
                onDoubleTap: (){print("Container double clicked");},
                onLongPress: (){print("Container long clicked");},
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
