import 'package:flutter/material.dart';
import 'model/Movie.dart';
import 'util/CurveCliper.dart';

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
          ClipPath(
            clipper: CurveCliper(),
            child: Image(
              fit: BoxFit.cover,
              image: NetworkImage(movie.backdrop),
              width: MediaQuery.of(context).size.width,
              height: 190,
            ),
          ),
          Positioned(
            left: 16,
            top: 140,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: Colors.black45,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(movie.poster),
                  width: 120,
                  height: 160,
                ),
              ),
            ),
          ),
          Positioned(
            left: 152,
            top: 200,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(movie.title,
                      style: Theme.of(context).textTheme.headline),
                  Row(
                      children: movie.categories
                          .map(
                              (s) => [Chip(label: Text(s)), SizedBox(width: 8)])
                          .expand((f) => f)
                          .take(movie.categories.length * 2 - 1)
                          .toList()),
                ]),
          ),
          Positioned(
            left: 146,
            top: 265,
            child: Row(children: <Widget>[
              IconButton(
                icon: Icon(Icons.favorite_border),
                color: Colors.grey,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.chat_bubble_outline),
                color: Colors.grey,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.share),
                color: Colors.grey,
                onPressed: () {},
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
