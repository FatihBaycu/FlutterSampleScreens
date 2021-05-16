import 'package:flutter/material.dart';

class ProgressBarScreen extends StatefulWidget {
  @override
  _ProgressBarScreenState createState() => _ProgressBarScreenState();
}

class _ProgressBarScreenState extends State<ProgressBarScreen> {
  bool progressBar = true;
  double increment = 50.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ProgressBar-Slider"),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        progressBar = true;
                      });
                    },
                    child: Text("Start")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        progressBar = false;
                      });
                    },
                    child: Text("Stop")),
              ],
            ),
            Visibility(
                visible: progressBar,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.deepPurple),
                )),
            Text("Result : ${increment.toInt()}"),
            Slider(
                max: 100,
                min: 0.0,
                value: increment,
                activeColor: Colors.indigo,
                inactiveColor: Colors.red,
                onChanged: (double i){
                  setState(() {
                    increment=i;
                  });
                }
                ),
            ElevatedButton(onPressed: (){
              print("Slider increment : ${increment.toInt()}");
            }, child: Text("Show")),
          ],
        ),
      ),
    );
  }
}
