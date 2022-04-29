import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../viewmodels/newsArticleViewModel.dart';

class NewsArticleDetailsPage extends StatelessWidget {
  final NewsArticleViewModel article;

  // ignore: use_key_in_widget_constructors
  NewsArticleDetailsPage({required this.article});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              article.title,
              style: GoogleFonts.montserrat(),
            ),
            backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          ),
          body: WebView(
            initialUrl: article.url,
          )),
    );
  }
}
