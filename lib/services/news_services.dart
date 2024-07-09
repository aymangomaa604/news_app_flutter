import 'package:dio/dio.dart';
import 'package:news_app_tha/Models/get_news_model.dart';

class NewsServices {
  final Dio dio = Dio();

 Future < List<GetNewsModel>> getGeneralNews(String category) async {
    final response = await dio.get(
      'https://newsapi.org/v2/top-headlines?category=$category&country=us&apiKey=3565d7441a8b4a9b9b00e647c55b5ad0',
    );
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<GetNewsModel> newsData = [];
    for (var article in articles) {
      newsData.add(
       GetNewsModel.fromJson(article)
      );
    }
    return newsData;
  }
}
