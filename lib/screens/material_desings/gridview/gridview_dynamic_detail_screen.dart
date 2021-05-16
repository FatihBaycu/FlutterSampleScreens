import 'package:flutter/material.dart';

class GridviewDynamicDetailScreen extends StatelessWidget {
  var country;

  GridviewDynamicDetailScreen(this.country);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Country Detail")),
      body: Center(
        child: Text(country,style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
