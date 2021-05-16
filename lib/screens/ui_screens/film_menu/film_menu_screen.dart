import 'package:flutter/material.dart';
import 'package:flutter_recipe/screens/ui_screens/film_menu/film_menu_detail_screen.dart';

class FilmMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: MyFilmMenuScreen(),
    );
  }
}

class MyFilmMenuScreen extends StatefulWidget {
  @override
  _MyFilmMenuScreen createState() => _MyFilmMenuScreen();
}

class _MyFilmMenuScreen extends State<MyFilmMenuScreen> {

  Future<List<Film>> getFilms() async {
    var films = <Film>[];
    var film1 = Film(1, "Anadoluda", "assets/images/film_images/anadolu_film.jpg",15.99,"file:///C:/Users/Fatih/AndroidStudioProjects/flutter_recipe/assets/images/film_images/tenet_film_trailer.mp4");
    var film2 = Film(2, "Django", "assets/images/film_images/django_film.jpg",9.99,"assets/images/film_images/tenet_film_trailer.mp4");
    var film3 = Film(3, "Inception","assets/images/film_images/inception_film.jpg", 19.99,"assets/images/film_images/tenet_film_trailer.mp4");
    var film4 = Film(4, "Intersallar","assets/images/film_images/intersallar_film.jpg", 29.99,"assets/images/film_images/tenet_film_trailer.mp4");
    var film5 = Film(4, "Tenet","assets/images/film_images/tenet_film.jpg", 49.99,"assets/images/film_images/tenet_film_trailer.mp4");

    films.add(film1);
    films.add(film2);
    films.add(film3);
    films.add(film4);
    films.add(film5);
    return films;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Films")),
      body: FutureBuilder<List<Film>>(
        future: getFilms(),
         builder: (context,snapshot){
          if(snapshot.hasData){
           var filmList=snapshot.data;
           return GridView.builder(
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2,
                 childAspectRatio: 2/3.5
               ),
               itemCount: filmList.length,
               itemBuilder: (context,index){
                 var film=filmList[index];
                 return GestureDetector(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>FilmMenuDetailScreen(film)));
                   },
                   child: Card(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         SizedBox(
                           height: 300,
                           child: Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Image.asset(film.image,fit: BoxFit.cover,),
                           ),
                         ),
                         Text(film.name,style: TextStyle(fontSize:16,fontWeight: FontWeight.bold),),
                         Text("${film.price.toString()} \u{20BA}",style: TextStyle(fontSize: 16),),
                       ],
                     ),
                   ),
                 );
               }
           );
          }
          else{return Center(child: Text("Loading...."),);}
         },
      ),
    );

  }
}

class Film {
  int id;
  String name;
  String image;
  double price;
  String trailer;

  Film(this.id, this.name, this.image, this.price,this.trailer);

}

