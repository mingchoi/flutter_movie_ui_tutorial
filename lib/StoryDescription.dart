import 'package:flutter/material.dart';
import 'model/Movie.dart';

class StoryDescription extends StatelessWidget {
  const StoryDescription({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}