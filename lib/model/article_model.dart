class Article {
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String content;

  Article(
      {required this.author,
      required this.title,
      required this.description,
      required this.url,
      required this.urlToImage,
      required this.content});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      author: json['author'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      urlToImage: json['urlToImage'] as String,
      content: json['content'] as String,
    );
  }
}
