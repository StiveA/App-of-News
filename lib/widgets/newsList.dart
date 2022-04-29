// ignore: file_names
import 'package:flutter/material.dart';

import '../viewmodels/newsArticleViewModel.dart';

class NewsList extends StatelessWidget {
  final List<NewsArticleViewModel> articles;
  final Function(NewsArticleViewModel article) onSelected;

  // ignore: use_key_in_widget_constructors
  const NewsList({required this.articles, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        final article = articles[index];

        return ListTile(
          onTap: () {
            onSelected(article);
          },
          leading: SizedBox(
              width: 60,
              height: 60,
              child: article.imageURL == ""
                  ? Image.asset("images/news-placeholder.png")
                  : Image.network(article.imageURL)),
          title: Text(article.title),
        );
      },
    );
  }
}
