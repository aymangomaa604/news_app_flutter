import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_tha/Models/get_news_model.dart';
import 'package:news_app_tha/services/news_services.dart';
import 'package:news_app_tha/widgets/news_tile.dart';


class NewsTileListView extends StatelessWidget {
 final  List<GetNewsModel> news ;

  const NewsTileListView({super.key, required this.news});
 


  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
          childCount: news.length,
          (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: NewsTile(
                  article: news[index],
                ),
              )),
    );
  }
}
