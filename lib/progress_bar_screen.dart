import 'package:flutter/material.dart';

class ProgressBarScreen extends StatefulWidget {
  @override
  _ProgressBarScreenState createState() => _ProgressBarScreenState();
}

class _ProgressBarScreenState extends State<ProgressBarScreen> {
  bool progressGorun = true;
  double ilerleme = 50.0;

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
                        progressGorun = true;
                      });
                    },
                    child: Text("Başla")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        progressGorun = false;
                      });
                    },
                    child: Text("Dur")),
              ],
            ),
            Visibility(
                visible: progressGorun,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.deepPurple),
                )),
            Text("Sonuç : ${ilerleme.toInt()}"),
            Slider(
                max: 100,
                min: 0.0,
                value: ilerleme,
                activeColor: Colors.indigo,
                inactiveColor: Colors.red,
                onChanged: (double i){
                  setState(() {
                    ilerleme=i;
                  });
                }
                ),
            ElevatedButton(onPressed: (){
              print("Slider ilerleme : ${ilerleme.toInt()}");
            }, child: Text("Göster")),
          ],
        ),
      ),
    );
  }
}
