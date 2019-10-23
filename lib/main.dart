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
            Placeholder(fallbackHeight: 310),
            StoryDescription(movie: movie),
            PhotoGallery(movie: movie),
            ActorList(movie: movie),
          ],
        ),
      ),
    );
  }
}
