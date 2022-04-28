import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../viewmodels/newsArticleViewModel.dart';

class NewsArticleDetailsPage extends StatelessWidget {
  final NewsArticleViewModel article;

  // ignore: use_key_in_widget_constructors
  NewsArticleDetailsPage({required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(article.title)),
        body: WebView(
          initialUrl: article.url,
        ));
  }
}
