import 'package:flutter/material.dart';

class AlertDialogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyAlertDialogScreen(),
    );
  }
}

class MyAlertDialogScreen extends StatefulWidget {
  @override
  _MyAlertDialogScreen createState() => _MyAlertDialogScreen();
}

class _MyAlertDialogScreen extends State<MyAlertDialogScreen> {
  var usernameTxt=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Alert Dialog"),),
      body: Center(child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            normalAlertDialog(),
            farkliAlertDialog(),
          ],
        ),
      ),),
    );
  }

  normalAlertDialog() {
    return ElevatedButton(
      child: Text("Open Alert"),
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Header"),
              content: Text("Content"),
              actions: [
                TextButton(
                  child: Text("Cancel"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                TextButton(
                  child: Text("Okey"),
                  onPressed: () {
                    print("Click Okey.");
                    Navigator.pop(context);
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }

  farkliAlertDialog() {
    return ElevatedButton(
      child: Text("Open Different Alert"),
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("User Enter"),
                content: SizedBox(
                  height: 80,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextField(
                          controller: usernameTxt,
                          decoration: InputDecoration(
                            labelText: "Username"
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                actions: [
                  ElevatedButton(child: Text("Cancel",),
                    style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red),),
                    onPressed: () => Navigator.pop(context),),
                  ElevatedButton(child: Text("Save"),
                    onPressed: (){
                    print("Data ${usernameTxt.text}");
                    usernameTxt.text="";
                    Navigator.pop(context);
                    },),
                ],

              );
            });
      },
    );
  }
}
