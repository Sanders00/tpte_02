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
        title: Text("${widget.article.title}"),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(8.0),
        children: [
          Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("${widget.article.urlToImage}"),
                    fit: BoxFit.cover),
              )),
          Text(widget.article.title!, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
          const Divider(
            color: Colors.blue,
            thickness: 0.2,
          ),
          Text("${widget.article.content}"),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '-By: ${widget.article.author}',
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(
            color: Colors.blue,
            thickness: 0.2,
          ),
        ],
      ),
    );
  }
}
