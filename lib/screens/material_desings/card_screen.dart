import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCardScreen(),
    );
  }
}

class MyCardScreen extends StatefulWidget{
  @override
  _MyCardScreen createState()=>_MyCardScreen();
}

class _MyCardScreen extends State<MyCardScreen> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                child: Card(
                  color: Colors.deepPurpleAccent,
                  elevation: 10,
                  shadowColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    //borderRadius: BorderRadius.only(bottomRight:Radius.circular(100),topRight: Radius.circular(100)),
                  side: BorderSide(width: 1,color: Colors.pinkAccent),
                  ),
                  child:Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Toplam Puan",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star,color: Colors.amber,),
                             Text("150",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold),),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ) ,
                ),
              ),
            ],
          ),
        ),
      );
  }

}
