import 'package:flutter/material.dart';
import 'package:flutter_recipe/screens/material_desings/listview/listview_dynamic_detail_screen.dart';

class ListViewDynamicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyListViewDynamicScreen(),
    );
  }
}

class MyListViewDynamicScreen extends StatefulWidget {
  @override
  _MyListViewDynamicScreen createState() => _MyListViewDynamicScreen();
}

class _MyListViewDynamicScreen extends State<MyListViewDynamicScreen> {
  var countries = ["Turkey", "Germany", "Italy", "Russia", "China"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dynamic ListView",
          style: TextStyle(color: Colors.red),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
            itemCount: countries.length,
            itemBuilder: (context, index) {
              return Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        Text(
                          countries[index],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        TextButton(
                          child: Text(
                            "Places to visit",
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ListViewDynamicDetailScreen(
                                             counrtyName: countries[index],)));

                        snackBar(countries[index], "Selected", 5);
                          },
                        ),
                        PopupMenuButton(
                            child: Icon(Icons.more_vert),
                          itemBuilder: (context)=>
                                  [
                                    PopupMenuItem(value: 1,child: Text("Delete")),
                                    PopupMenuItem(value: 2,child: Text("Update")),
                                  ],
                          onSelected: (menuItemValue){
                              if(menuItemValue==1){snackBar(countries[index],"Deleted",2);}
                              if(menuItemValue==2){snackBar(countries[index],"Updated",2);}
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
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
