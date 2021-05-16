import 'package:flutter/material.dart';

class ListViewDynamicDetailScreen extends StatelessWidget {
  var counrtyName;

  ListViewDynamicDetailScreen({this.counrtyName});

  @override
  Widget build(BuildContext context) {
    return  MyListViewDynamicDetailScreen(counrtyName);

  }
}

class MyListViewDynamicDetailScreen extends StatefulWidget {
  var counrtyName;

  MyListViewDynamicDetailScreen(this.counrtyName);

  @override
  _MyListViewDynamicDetailScreen createState() =>
      _MyListViewDynamicDetailScreen(counrtyName);
}

class _MyListViewDynamicDetailScreen
    extends State<MyListViewDynamicDetailScreen> {
  var counrtyName;

  _MyListViewDynamicDetailScreen(this.counrtyName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Country"),
      ),
      body: Center(
          child: Text(counrtyName,style: TextStyle(fontSize: 50),)),
    );
  }
}
