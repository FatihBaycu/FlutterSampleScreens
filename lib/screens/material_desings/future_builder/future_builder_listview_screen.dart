import 'package:flutter/material.dart';

class FutureBuilderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyFutureBuilderScreen(),
    );
  }
}

class MyFutureBuilderScreen extends StatefulWidget {
  @override
  _MyFutureBuilderScreen createState() => _MyFutureBuilderScreen();
}

class _MyFutureBuilderScreen extends State<MyFutureBuilderScreen> {

  Future<List<String>> verileriGetir() async {
    var countries = ["Turkey", "Germany", "Italy", "Russia", "China"];
    return countries;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Future Builder Listeleme"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder<List<String>>(
          future: verileriGetir(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var countryList = snapshot.data;
              return ListView.builder(
                  itemCount: countryList.length,
                  itemBuilder: (context,index){
                    return Card(
                      child: SizedBox(
                        height: 50,
                        child: Row(
                          children: [
                            Text(countryList[index])
                          ],
                        ),
                      ),
                    );
                  }
              );
            }
            else {
              return Center();
            }
          },
        ),
      ),
    );
  }
}






