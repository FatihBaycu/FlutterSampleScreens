import 'package:flutter/material.dart';
import 'package:flutter_recipe/screens/material_desings/gridview/gridview_dynamic_detail_screen.dart';

class GridviewDynamicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyGridviewDynamicScreen(),
    );
  }
}
class MyGridviewDynamicScreen extends StatefulWidget{
  @override
 _MyGridviewDynamicScreen createState()=>_MyGridviewDynamicScreen();
}

class _MyGridviewDynamicScreen  extends State<MyGridviewDynamicScreen>{
  var countries = ["Turkey", "Germany", "Italy", "Russia", "China"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView Dynamic"),),
      body:GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2/1,
        ),
        itemCount: countries.length,
        itemBuilder: (context,index){
          return Card(
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(countries[index],style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),),
                  Spacer(),
                  GestureDetector(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>GridviewDynamicDetailScreen(countries[index])));},
                      child: Text("Select",style:TextStyle(color:Colors.red,fontSize: 15,fontWeight: FontWeight.bold))),
                     PopupMenuButton(
                       child: Icon(Icons.more_vert),
                       itemBuilder: (context)=>
                       [
                         PopupMenuItem(value:1,child: Text("Sil")),
                         PopupMenuItem(value:2,child: Text("Güncelle"))
                       ],
                       onSelected: (menuItemValue){
                         if(menuItemValue==1){snackBar(countries[index], "Silindi", 2);}
                         if(menuItemValue==2){snackBar(countries[index], "Güncellendi", 2);}
                       },
                     ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
  void snackBar(var data,String message,int duration){
    duration=2;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "${data} $message",
          style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold),
        ),
        duration: Duration(seconds: duration),
        backgroundColor: Colors.white,
      ),
    );
  }
}
