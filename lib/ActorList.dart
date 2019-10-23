import 'package:flutter/material.dart';
import 'model/Movie.dart';

class ActorList extends StatelessWidget {
  const ActorList({
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
          Text("Actors", style: Theme.of(context).textTheme.title),
          SizedBox(height: 8),
          Container(
            height: 120,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, i) => Column(children: <Widget>[
                CircleAvatar(
                  minRadius: 32,
                  backgroundImage: NetworkImage(movie.actors[i].url),
                ),
                SizedBox(height: 8),
                Text(movie.actors[i].name),
              ]),
              separatorBuilder: (ctx, i) => SizedBox(width: 16),
              itemCount: movie.actors.length,
            ),
          ),
        ],
      ),
    );
  }
}
