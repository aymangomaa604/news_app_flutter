import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_tha/Models/get_news_model.dart';
import 'package:news_app_tha/views/news_disc_view.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
    required this.article,
  });
  final GetNewsModel article;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return NewsDiscriptionView(newsModel: article,);
        }));
      },
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          article.image != null
              ? Image.network(
                  article.image!,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.fill,
                )
              : Image.asset('assets/business.avif'),
          Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            article.title,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            article.subTitle ?? '',
            style: const TextStyle(fontSize: 16, color: Colors.black
                //fontWeight: FontWeight.bold,
                ),
          )
        ],
      ),
    );
  }
}
