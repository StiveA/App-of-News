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
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "NoticiaTop",
      home: NewsListPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
