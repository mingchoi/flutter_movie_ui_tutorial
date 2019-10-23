import 'package:flutter/material.dart';
import 'package:movie_ui_sample/widget/ImageViewer.dart';
import 'model/Movie.dart';

class PhotoGallery extends StatelessWidget {
  const PhotoGallery({
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
          Text("Photos", style: Theme.of(context).textTheme.title),
          SizedBox(height: 8),
          Container(
            height: 120,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, i) => GestureDetector(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Hero(
                      tag: movie.photos[i].url,
                      child: Image(
                          image: NetworkImage(movie.photos[i].thumbnail))),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                        opaque: false,
                        pageBuilder: (context, _, __) =>
                            ImageViewer(url: movie.photos[i].url)),
                  );
                },
              ),
              separatorBuilder: (ctx, i) => SizedBox(width: 8),
              itemCount: movie.photos.length,
            ),
          ),
        ],
      ),
    );
  }
}
