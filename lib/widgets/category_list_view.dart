
import 'package:flutter/material.dart';
import 'package:news_app_tha/Models/category_news_model.dart';
import 'package:news_app_tha/widgets/category_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
    required this.newsdata,
  });

  final List<CategoryNewsModel> newsdata;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: newsdata.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CategoryNews(news: newsdata[index]);
        },
      ),
    );
  }
}
