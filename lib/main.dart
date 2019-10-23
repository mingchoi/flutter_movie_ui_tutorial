import 'package:flutter/material.dart';
import 'ActorList.dart';
import 'MovieHeader.dart';
import 'PhotoGallery.dart';
import 'StoryDescription.dart';
import 'data/MovieRepo.dart';
import 'model/Movie.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MovieInfoPage(),
    );
  }
}

class MovieInfoPage extends StatefulWidget {
  const MovieInfoPage({
    Key key,
  }) : super(key: key);

  @override
  _MovieInfoPageState createState() => _MovieInfoPageState();
}

class _MovieInfoPageState extends State<MovieInfoPage> {
  Movie _movie;

  _MovieInfoPageState() {
    MovieRepo repo = MovieRepo();
    repo.getFirstMovieFake().listen((m) => setState(() {
          _movie = m;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _movie == null
          ? Center(child: CircularProgressIndicator())
          : ListView(
              children: <Widget>[
                MovieHeader(movie: _movie),
                StoryDescription(movie: _movie),
                PhotoGallery(movie: _movie),
                ActorList(movie: _movie),
              ],
            ),
    );
  }
}
