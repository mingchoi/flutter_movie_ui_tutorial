import 'package:flutter/material.dart';
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Storyline", style: Theme.of(context).textTheme.title),
                  SizedBox(height: 8),
                  Text(movie.storyline,
                      style: Theme.of(context).textTheme.caption),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Photos", style: Theme.of(context).textTheme.title),
                  SizedBox(height: 8),
                  Container(
                    height: 120,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image(
                              image: NetworkImage(movie.photos[0].thumbnail)),
                        ),
                        SizedBox(width: 8),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image(
                              image: NetworkImage(movie.photos[1].thumbnail)),
                        ),
                        SizedBox(width: 8),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image(
                              image: NetworkImage(movie.photos[2].thumbnail)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Placeholder(fallbackHeight: 200),
          ],
        ),
      ),
    );
  }
}
