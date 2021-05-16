import 'package:flutter/material.dart';

class AppBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyAppBarScreen(),
    );
  }
}

class MyAppBarScreen extends StatefulWidget{
  @override
  _MyAppBarScreen createState() =>_MyAppBarScreen();
}

class _MyAppBarScreen extends State<MyAppBarScreen> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Column(
       children: [
         Text("AppBar",style: TextStyle(color:Colors.white,fontSize: 16.0),),
         Text("Alt Başlık",style: TextStyle(color:Colors.white,fontSize: 12.0),),
       ],
     ),
       centerTitle: false,
       leading: IconButton(
         tooltip: "Menu Icon",
         icon: Icon(Icons.dehaze),
         onPressed: (){
           print("Menu Icon Tıklandı");
         },
       ),
       actions: [
         TextButton(
           child: Text("Çıkış", style: TextStyle(color:Colors.white),),
           onPressed: (){print("Çıkış Tıklandı");},
         ),
         IconButton(
           icon: Icon(Icons.info_outline),
           tooltip: "Bilgi",
           onPressed: (){print("Bilgi Tıklandı");},
         ),
         PopupMenuButton(
           icon: Icon(Icons.more_vert),
            itemBuilder: (context)=>[
              PopupMenuItem(value: 1,child: Text("Sil")),
              PopupMenuItem(value: 2,child: Text("Güncelle")),
            ],
           onSelected: (menuItemValue){
             if(menuItemValue==1){print("Sil Tıklandı");}
             if(menuItemValue==2){print("Güncelle Tıklandı");}
           },
         ),
       ],
     ),

   );
  }
}
