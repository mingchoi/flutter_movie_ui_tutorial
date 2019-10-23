import 'package:rxdart/rxdart.dart';
import '../model/Movie.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/ImageData.dart';
import '../model/Actor.dart';

class MovieRepo {
  static Movie getSampleMovie() => Movie(
          title: "That Movie",
          poster: "https://picsum.photos/id/200/720/1280",
          backdrop: "https://picsum.photos/id/201/800/800",
          storyline:
              "For their fifth fully-animated feature-film collaboration, Illumination Entertainment and Universal Pictures present The Secret Life of Pets, a comedy about the lives our...",
          photos: [
            ImageData(
                thumbnail: "https://picsum.photos/id/567/160/120",
                url: "https://picsum.photos/id/567/1600/1200"),
            ImageData(
                thumbnail: "https://picsum.photos/id/568/160/120",
                url: "https://picsum.photos/id/568/1600/1200"),
            ImageData(
                thumbnail: "https://picsum.photos/id/569/160/120",
                url: "https://picsum.photos/id/569/1600/1200")
          ],
          actors: [
            Actor(
                name: "First Guy",
                url: "https://picsum.photos/id/1003/128/128"),
            Actor(
                name: "Next Guy", url: "https://picsum.photos/id/1004/128/128"),
            Actor(
                name: "Third Guy",
                url: "https://picsum.photos/id/1005/128/128"),
            Actor(
                name: "Fouth Guy",
                url: "https://picsum.photos/id/1006/128/128"),
            Actor(
                name: "Fifth Guy",
                url: "https://picsum.photos/id/1009/128/128"),
            Actor(name: "Six Guy", url: "https://picsum.photos/id/1010/128/128")
          ],
          categories: [
            "Comedy",
            "Cartoon"
          ]);

  Stream<Movie> getFirstMovie() {
    return Observable.fromFuture(http.get("https://api.myjson.com/bins/cd02w"))
        .map((res) {
      Iterable it = json.decode(res.body);
      List<Movie> movies = it.map((e) => Movie.fromJson(e)).toList();
      return movies.first;
    });
  }

  Stream<Movie> getFirstMovieFake() {
    return Observable.just(getSampleMovie()).delay(Duration(seconds: 1));
  }
}
