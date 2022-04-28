import 'package:app_articles_news/pages/newsListPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'viewmodels/newsArticleListViewModel.dart';

void main() {
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NewsArticleListViewModel()),
      ],
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Fresh News", home: NewsListPage());
  }
}
