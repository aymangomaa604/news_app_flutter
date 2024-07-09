// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app_tha/Models/get_news_model.dart';
// import 'package:news_app_tha/services/news_services.dart';
// import 'package:news_app_tha/widgets/news_tile.dart';

// class NewsTileListView extends StatefulWidget {
//   const NewsTileListView({
//     super.key,
//   });

//   @override
//   State<NewsTileListView> createState() => _NewsTileListViewState();
// }

// class _NewsTileListViewState extends State<NewsTileListView> {
//   List<GetNewsModel> news = [];
//   bool loading = true;
//   @override
//   void initState() {
//     super.initState();
//     newMethod();
//   }

//   Future<void> newMethod() async {
//     news = await NewsServices().getGeneralNews();
//     setState(() {});
//         loading = false;

//   }

//   @override
//   Widget build(BuildContext context) {
//     return loading ?SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())) : SliverList(
//       delegate: SliverChildBuilderDelegate(
//           childCount: news.length,
//           (context, index) => Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 12),
//                 child: NewsTile(
//                   article: news[index],
//                 ),
//               )),
//     );
//   }
// }
