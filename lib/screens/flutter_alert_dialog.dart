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
  var kullaniciAdiTextBox=TextEditingController();
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
      child: Text("Alert Aç"),
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Başlık"),
              content: Text("İçerik"),
              actions: [
                TextButton(
                  child: Text("İptal"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                TextButton(
                  child: Text("Tamam"),
                  onPressed: () {
                    print("tamama basıldı");
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
      child: Text("Farklı Alert Aç"),
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Kullanıcı Girişi"),
                content: SizedBox(
                  height: 80,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextField(
                          controller: kullaniciAdiTextBox,
                          decoration: InputDecoration(
                            labelText: "Kullanıcı Adı"
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                actions: [
                  ElevatedButton(child: Text("İptal",),
                    style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red),),
                    onPressed: () => Navigator.pop(context),),
                  ElevatedButton(child: Text("Kaydet"),
                    onPressed: (){
                    print("Girilen Veri ${kullaniciAdiTextBox.text}");
                    kullaniciAdiTextBox.text="";
                    Navigator.pop(context);
                    },),
                ],

              );
            });
      },
    );
  }
}
