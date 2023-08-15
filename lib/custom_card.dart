import 'package:flutter/material.dart';
import 'package:tpte_02/model/article_model.dart';
import 'package:tpte_02/detail_page.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.article});
  final Article article;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(article: article),
              ));
        },
        child: Center(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "${article.title}",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: article.urlToImage != null
                      ? DecorationImage(
                          image: NetworkImage(article.urlToImage!),
                          fit: BoxFit.cover)
                      : const DecorationImage(
                          image: AssetImage(
                              'assets/icon-image-not-found-free-vector.jpg')),
                )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Text("${article.description}"),
            ),
          ],
        )),
      ),
    );
  }
}
