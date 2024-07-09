import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app_tha/Models/category_news_model.dart';
import 'package:news_app_tha/Models/get_news_model.dart';
import 'package:news_app_tha/services/news_services.dart';
import 'package:news_app_tha/widgets/category_item.dart';
import 'package:news_app_tha/widgets/category_list_view.dart';
import 'package:news_app_tha/widgets/news_list_view_builder.dart';
import 'package:news_app_tha/widgets/news_tile.dart';
import 'package:news_app_tha/widgets/news_tile_list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final List<CategoryNewsModel> newsdata = const [
    CategoryNewsModel(name: 'sports', image: 'assets/sports.avif'),
    CategoryNewsModel(name: 'business', image: 'assets/business.avif'),
    CategoryNewsModel(name: 'entertaiment', image: 'assets/entertaiment.avif'),
    CategoryNewsModel(name: 'general', image: 'assets/general.avif'),
    CategoryNewsModel(name: 'health', image: 'assets/health.avif'),
    CategoryNewsModel(name: 'science', image: 'assets/science.avif'),
    CategoryNewsModel(name: 'technology', image: 'assets/technology.jpeg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Text(
              'Cloud',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.orange),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 15,)),
          SliverToBoxAdapter(
            child: CategoryListView(newsdata: newsdata),
          ),
          NewsListViewBuilder(category: 'general',)
        ],
      ),

      // body: Column(
      //   children: [
      //     CategoryListView(newsdata: newsdata),
      //     const Expanded(
      //       child: NewsTileListView(),
      //     )
      //   ],
      // ),
    );
  }
}

