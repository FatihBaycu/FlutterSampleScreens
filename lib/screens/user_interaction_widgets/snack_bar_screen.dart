import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Default"),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Hello")),
                );
              },
            ),
            ElevatedButton(
              child: Text("SnackBar Action"),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: Duration(seconds: 1),
                    content: Text("Do you want delete?"),
                    action: SnackBarAction(
                      label: "Yes",
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          duration:Duration(seconds: 1),
                          content: Text("Deleted"),
                        ));
                      },
                    ),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text("SnackBar Special"),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("No Internet connection",
                        style: TextStyle(color: Colors.indigo)),
                    backgroundColor: Colors.white,
                    duration: Duration(seconds: 5),
                    action: SnackBarAction(
                      label: "Try Again",
                      textColor: Colors.red,
                      onPressed: (){
                        print("Tried Again");
                      },
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
