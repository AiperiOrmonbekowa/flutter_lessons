import 'package:flutter/material.dart';
import 'package:news_app/model/article.dart';

class ArticleDetailPage extends StatelessWidget {
  const ArticleDetailPage(this.article,{super.key});
final Article article;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
    );
  }
}