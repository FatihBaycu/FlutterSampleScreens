import 'package:flutter/material.dart';
import 'package:flutter_recipe/screens/ui_screens/film_menu/film_menu_screen.dart';

class FilmMenuDetailScreen extends StatelessWidget {
  Film film;
  FilmMenuDetailScreen(this.film);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(film.name),),
      body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 500,
                  child: Image.asset(film.image),),
                Text("${film.price.toString()} \u{20BA}",style: TextStyle(color: Colors.blue,fontSize: 50),),
                SizedBox(
                  width: 250,
                  height: 50,
                  child: TextButton(child: Text("RENT",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)), style: TextButton.styleFrom(backgroundColor: Colors.red,),),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
