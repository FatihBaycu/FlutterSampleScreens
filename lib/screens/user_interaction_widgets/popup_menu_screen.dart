//Popup menu örnek ListTile içersindeki trailing yerine konulabilir.
//Parametre olarak ilgili liste index ini alması gerekir,
//Eğer o index ile işlem yapılcaksa.

import 'package:flutter/material.dart';

class PopupMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MyPopupMenuScreen(),
    );
  }
}

class MyPopupMenuScreen  extends StatefulWidget{
  @override
  _MyPopupMenuScreen createState() =>_MyPopupMenuScreen();
}

class _MyPopupMenuScreen extends State<MyPopupMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Popup Menu"),),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PopupMenuButton(
              child:Icon(Icons.open_in_new),
              itemBuilder: (context)=>
                [
                PopupMenuItem(
                  value: 1,
                  child: Text("Update",style: TextStyle(color:Colors.orange),),
                ),
                PopupMenuItem(
                  value: 1,
                  child: Text("Delete",style: TextStyle(color:Colors.red),),
                ),
                ],
              onCanceled: (){
                print("Not Selected");
              },
              onSelected: (menuItemValue){
                if(menuItemValue==1){print("Select Update");}
                if(menuItemValue==2){print("Select Delete");}
              },
            ),
          ],
        ),
      ),
    );
  }
}
