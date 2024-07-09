// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app_tha/Models/get_news_model.dart';

// class NewsDiscriptionView extends StatelessWidget {
//   const NewsDiscriptionView({super.key, required this.article});
//   final GetNewsModel article;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: ListView(

//           children: [
//             SizedBox(
//               height: 20,
//             ),
//             article.image != null
//                 ? Container(
//                     decoration:
//                         BoxDecoration(borderRadius: BorderRadius.circular(20)),
//                     child: Image.network(
//                       article.image!,
//                       height: 200,
//                       width: double.infinity,
//                       fit: BoxFit.fill,
//                     ),
//                   )
//                 : Image.asset('assets/business.avif'),
//             Text(
//               //maxLines: 2,
//               //overflow: TextOverflow.ellipsis,
//               article.title,
//               style: const TextStyle(
//                 fontSize: 22,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Text(
//               //maxLines: 2,
//               //overflow: TextOverflow.ellipsis,
//               article.subTitle ?? '',
//               style: const TextStyle(fontSize: 16, color: Colors.black
//                   //fontWeight: FontWeight.bold,
//                   ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:news_app_tha/Models/get_news_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsDiscriptionView extends StatelessWidget {
  const NewsDiscriptionView({super.key, required this.newsModel});
  final GetNewsModel newsModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewExample(
        newsModel: newsModel,
      ),
    );
  }
}

class WebViewExample extends StatefulWidget {
  final GetNewsModel newsModel;

  const WebViewExample({super.key, required this.newsModel});
  @override
  WebViewExampleState createState() => WebViewExampleState();
}

class WebViewExampleState extends State<WebViewExample> {
  final controller = WebViewController();
  bool isLoading = true;
  @override
  void initState() {
    controller
      ..setJavaScriptMode(JavaScriptMode.disabled)
      ..loadRequest(Uri.parse(widget.newsModel.url!));
     
    isLoading = false;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:isLoading ? Center(child: CircularProgressIndicator()): WebViewWidget(controller: controller));
  }
}
