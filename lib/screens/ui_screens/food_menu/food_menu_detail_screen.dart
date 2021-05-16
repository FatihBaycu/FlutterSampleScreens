import 'package:flutter/material.dart';

import 'food_menu_screen.dart';

class FoodMenuDetailScreen extends StatelessWidget {
  Food food;
  FoodMenuDetailScreen(this.food);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(food.foodName),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(food.image),
            Text("${food.price.toString()} \u{20BA}",style:TextStyle(fontSize: 48,color: Colors.blue)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(height:50,width: 300,child: ElevatedButton(onPressed: (){}, child: Text("Sipariş Ver",style: TextStyle(color: Colors.white),))),
            ),
          ],
        ),
      ),
    );
  }
}
