import 'package:flutter/material.dart';
import 'package:news_app_tha/widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          category,
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: SizedBox(
            height: 15,
          )),
          NewsListViewBuilder(
            category: category,
          ),
        ],
      ),
    );
  }
}
