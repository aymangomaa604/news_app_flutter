import 'package:flutter/material.dart';
import 'package:news_app_tha/services/news_services.dart';
import 'package:news_app_tha/views/home_page.dart';

void main() {
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // color: Colors.amber,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor:
              Colors.grey // Set your desired background color here
          ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
