import 'package:flutter/material.dart';
import 'package:news_app_tha/Models/category_news_model.dart';
import 'package:news_app_tha/views/category_news_page.dart';

class CategoryNews extends StatelessWidget {
  const CategoryNews({
    super.key,
    required this.news,
  });
  final CategoryNewsModel news;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return CategoryView(category: news.name,);
        }));
      },
      child: Container(
        margin: const EdgeInsets.only(left: 10),
        width: 180,
        height: 100,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(news.image),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(10),
          color: Colors.yellow,
        ),
        child: Center(
          child: Text(
            news.name,
            style: const TextStyle(
              color: Colors.white,
              //fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }
}
