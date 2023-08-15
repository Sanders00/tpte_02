import 'package:tpte_02/model/article_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class NewsAPI {
  Future<List<Article>> getArticle() async {
    http.Response response = await http.get(Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=1048177803664f7a920e9b4670daf541'));
    if (response.statusCode == 200) {
      var json = convert.jsonDecode(response.body) as Map<String, dynamic>;
      List<dynamic> body = json['articles'];
      List<Article> articles = body.map((e) => Article.fromJson(e)).toList();
      return articles;
    } else {
      throw ('ERROR GETTING ARTICLES');
    }
  }
}
