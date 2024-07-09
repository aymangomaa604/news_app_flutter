import 'package:flutter/material.dart';
import 'package:news_app_tha/Models/get_news_model.dart';
import 'package:news_app_tha/services/news_services.dart';
import 'package:news_app_tha/widgets/news_tile_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
    final String category;

  const NewsListViewBuilder({super.key, required this.category});
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
 
  @override
  void initState() {
    future = NewsServices().getGeneralNews(widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<GetNewsModel>>(
        future: future,
        builder: (context, Snapshot) {
          if (Snapshot.hasData) {
            return NewsTileListView(
              news: Snapshot.data!,
            );
          } else if (Snapshot.hasError) {
            return const SliverToBoxAdapter(child: Text('there was an error '));
          } else {
            return const SliverToBoxAdapter(
                child: Center(child: const CircularProgressIndicator()));
          }
        });
  }
}
