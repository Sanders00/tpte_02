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
                builder: (context) => DetailPage(),
              ));
        },
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Center(
              child: Column(
            children: [
              Text(article.title),
              Container(
                height: 200,
                width: 200,
                  decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(article.urlToImage), fit: BoxFit.cover),
              )),
              Text(article.description),
            ],
          )),
        ),
      ),
    );
  }
}
