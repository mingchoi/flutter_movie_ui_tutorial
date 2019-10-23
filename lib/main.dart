import 'package:flutter/material.dart';
import 'ActorList.dart';
import 'PhotoGallery.dart';
import 'StoryDescription.dart';
import 'data/MovieRepo.dart';
import 'model/Movie.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Movie movie = MovieRepo.getSampleMovie();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            MovieHeader(movie: movie),
            StoryDescription(movie: movie),
            PhotoGallery(movie: movie),
            ActorList(movie: movie),
          ],
        ),
      ),
    );
  }
}

class MovieHeader extends StatelessWidget {
  const MovieHeader({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310,
      child: Stack(
        children: <Widget>[
          Image(
            fit: BoxFit.cover,
            image: NetworkImage(movie.backdrop),
            width: MediaQuery.of(context).size.width,
            height: 190,
          ),
          Positioned(
            left: 16,
            top: 140,
            child: Image(
              fit: BoxFit.cover,
              image: NetworkImage(movie.poster),
              width: 120,
              height: 160,
            ),
          ),
          Positioned(
            left: 152,
            top: 200,
            child: Column(children: <Widget>[
              Text(movie.title, style: Theme.of(context).textTheme.headline),
              Row(children: <Widget>[
                Chip(label: Text("hello")),
                SizedBox(width: 8),
                Chip(label: Text("world")),
              ]),
            ]),
          ),
        ],
      ),
    );
  }
}
