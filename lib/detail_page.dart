import 'package:flutter/material.dart';
import 'package:tpte_02/model/article_model.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.article});
  final Article article;
  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.article.title!),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(widget.article.urlToImage!),
                      fit: BoxFit.cover),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.article.content!),
            )
          ],
        ),
      ),
    );
  }
}
