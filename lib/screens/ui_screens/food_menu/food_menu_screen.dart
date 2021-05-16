import 'package:flutter/material.dart';
import 'package:flutter_recipe/screens/ui_screens/food_menu/food_menu_detail_screen.dart';

class FoodMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
      home: MyFoodMenuScreen(),
    );
  }
}

class MyFoodMenuScreen extends StatefulWidget {
  @override
  _MyFoodMenuScreen createState() => _MyFoodMenuScreen();
}

class _MyFoodMenuScreen extends State<MyFoodMenuScreen> {
  Future<List<Food>> getFoods() async {
    var foods = <Food>[];
    var food1 = Food(
        1,
        "Köfte",
        "https://im.haberturk.com/2020/12/25/ver1608872167/2915348_810x458.jpg",
        20);
    var food2 = Food(
        2,
        "Pilav",
        "https://im.haberturk.com/2019/10/16/ver1571221752/2531465_810x458.jpg",
        20);
    var food3 = Food(
        3,
        "Kuru Fasulye",
        "https://i4.hurimg.com/i/hurriyet/75/750x422/5e787099d3806c27c4ef5369.jpg",
        20);
    var food4 = Food(
        4,
        "Nohut",
        "https://cdn.yemek.com/mncrop/600/315/uploads/2015/01/nohut-tarifi1.jpg",
        30);
    var food5 = Food(
        5,
        "Çorba",
        "https://im.haberturk.com/2020/10/27/ver1603801237/2849815_810x458.jpg",
        12);
    var food6 = Food(
        6,
        "Mantı",
        "https://cdn.yemek.com/mnresize/940/940/uploads/2020/08/manti-tarifi-guncelleme-son.jpg",
        20);
    var food7 = Food(
        7,
        "Hamburger",
        "https://cdn.yemek.com/mncrop/940/625/uploads/2016/05/ev-yapimi-hamburger.jpg",
        20);
    var food8 = Food(
        8,
        "Cola",
        "https://ayb.akinoncdn.com/products/2019/01/18/3544/5aa1ee14-1c83-4213-a62b-773c4785e187_size780x780_quality60_cropCenter.jpg",
        9);
    var food9 = Food(
        9,
        "Water",
        "https://www.erikli.com.tr/uploads/products/cf1fa2d1-a21e-40a3-b16e-c29bb5f19b11.png?v=1.1",
        5);
    var food10 = Food(
        10,
        "Ice Tea",
        "https://reimg-carrefour.mncdn.com/mnresize/600/600/productimage/30088183/30088183_0_MC/8796873162802_1600421575252.jpg",
        9);
    foods.add(food1);
    foods.add(food2);
    foods.add(food3);
    foods.add(food4);
    foods.add(food5);
    foods.add(food6);
    foods.add(food7);
    foods.add(food8);
    foods.add(food9);
    foods.add(food10);
    return foods;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Foods"),
      ),
      body: Container(
        child: FutureBuilder<List<Food>>(
          future: getFoods(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var foodList = snapshot.data;
              return ListView.builder(
                  itemCount: foodList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                      },
                      child: Card(
                        child: Row(
                          children: [
                            SizedBox(height:150,width: 150,child: Image.network(foodList[index].image,),),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(foodList[index].foodName,style: TextStyle(fontSize: 25),),
                                  SizedBox(height: 50,),
                                  Text("${foodList[index].price.toString()} \u{20BA}",style: TextStyle(color:Colors.blue,fontSize: 20),),
                                ],),
                            ),
                            Spacer(),
                            IconButton(icon: Icon(Icons.navigate_next),onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>FoodMenuDetailScreen(foodList[index])));
                            },),
                          ],
                        ),
                      ),
                    );
                  });
            } else {
              return Center(child:Text("Loading...."));
            }
          },
        ),
      ),
    );
  }
}

class Food {
  int id;
  String foodName;
  String image;
  double price;

  Food(this.id, this.foodName, this.image, this.price);
}
