import 'package:flutter/material.dart';
import 'package:flutter_recipe/screens/ui_screens/film_menu/film_menu_screen.dart';
import 'package:video_player/video_player.dart';

class FilmMenuDetailScreen extends StatelessWidget {
  Film film;

  FilmMenuDetailScreen(this.film);

  @override
  Widget build(BuildContext context) {
    return MyFilmMenuDetailScreen(film);
  }
}

class MyFilmMenuDetailScreen extends StatefulWidget {
  Film film;

  MyFilmMenuDetailScreen(this.film);

  @override
  _MyFilmMenuDetailScreen createState() => _MyFilmMenuDetailScreen(film);
}

class _MyFilmMenuDetailScreen extends State<MyFilmMenuDetailScreen> {
  Film film;

  _MyFilmMenuDetailScreen(this.film);

  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.network(film.trailer);
    _initializeVideoPlayerFuture = _controller.initialize();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(film.name),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 300,
                  child: FutureBuilder(
                    future: _initializeVideoPlayerFuture,
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                        );
                      } else {
                        return Center(child: CircularProgressIndicator());
                      }
                    },
                  ),
                ),
              ),
              TextButton(
                  child: Icon(_controller.value.isPlaying?Icons.pause:Icons.play_arrow),
                  onPressed: () {
                setState(() {
                  if(_controller.value.isPlaying){_controller.pause();}
                  else{_controller.play();}
                });
              }
              ),
              // SizedBox(
              //   height: 200,
              //   child: Image.asset(film.image),
              // ),
              Text(
                "${film.price.toString()} \u{20BA}",
                style: TextStyle(color: Colors.blue, fontSize: 50),
              ),
              SizedBox(
                width: 250,
                height: 50,
                child: TextButton(
                  child: Text("RENT",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
