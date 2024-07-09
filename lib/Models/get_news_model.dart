class GetNewsModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String? url;

  GetNewsModel({required this.url, 
      required this.image, required this.title, required this.subTitle});

  factory GetNewsModel.fromJson(json) {
    return GetNewsModel(
      url: json['url'],
      image: json['urlToImage'],
      title: json['title'],
      subTitle: json['description'],
    );
  }
}
