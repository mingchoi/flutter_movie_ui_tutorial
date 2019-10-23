import 'ImageData.dart';
import 'Actor.dart';

class Movie {
  String title;
  String poster;
  String backdrop;
  String storyline;
  List<ImageData> photos;
  List<Actor> actors;
  List<String> categories;

  Movie(
      {this.title,
      this.poster,
      this.backdrop,
      this.storyline,
      this.photos,
      this.actors,
      this.categories});

  Movie.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    poster = json['poster'];
    backdrop = json['backdrop'];
    storyline = json['storyline'];
    if (json['photos'] != null) {
      photos = new List<ImageData>();
      json['photos'].forEach((v) {
        photos.add(new ImageData.fromJson(v));
      });
    }
    if (json['actors'] != null) {
      actors = new List<Actor>();
      json['actors'].forEach((v) {
        actors.add(new Actor.fromJson(v));
      });
    }
    categories = json['categories'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['poster'] = this.poster;
    data['backdrop'] = this.backdrop;
    data['storyline'] = this.storyline;
    if (this.photos != null) {
      data['photos'] = this.photos.map((v) => v.toJson()).toList();
    }
    if (this.actors != null) {
      data['actors'] = this.actors.map((v) => v.toJson()).toList();
    }
    data['categories'] = this.categories;
    return data;
  }

}
