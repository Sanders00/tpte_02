class Article {
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? content;

  Article(
      {this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.content});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      author: json['author'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      urlToImage: json['urlToImage'] as String?,
      content: json['content'] as String?,
    );
  }
}
