class Constants {
  static String TOP_HEADLINES_URL =
      "https://newsapi.org/v2/top-headlines?country=us&apiKey=f9d7e588cfac4bfd8500024579c47305";

  static String headlinesFor(String keyword) {
    return "https://newsapi.org/v2/everything?q=$keyword&apiKey=f9d7e588cfac4bfd8500024579c47305";
  }
}
