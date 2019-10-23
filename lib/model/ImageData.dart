class ImageData {
  String thumbnail;
  String url;

  ImageData({this.thumbnail, this.url});

  ImageData.fromJson(Map<String, dynamic> json) {
    thumbnail = json['thumbnail'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['thumbnail'] = this.thumbnail;
    data['url'] = this.url;
    return data;
  }
}
