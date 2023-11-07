import 'package:news_app/model/source.dart';

class Article {
  const Article({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  final Source source;
  final String? author;
  final String title;
  final String description;
  final String url;
  final String? urlToImage;
  final DateTime publishedAt;
  final String? content;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'source': source.toJson(),
      'author': author,
      'title': title,
      'description': description,
      'url': url,
      'urlToImage': urlToImage,
      'publishedAt': publishedAt.millisecondsSinceEpoch,
      'content': content,
    };
  }

  factory Article.fromJson(Map<String, dynamic> map) {
    return Article(
      source: Source.fromJson(map['source'] as Map<String, dynamic>),
      author: map['author'] != null ? map['author'] as String : null,
      title: map['title'] as String,
      description: map['description'] as String,
      url: map['url'] as String,
      urlToImage:
          map['urlToImage'] != null ? map['urlToImage'] as String : null,
      publishedAt: DateTime.parse(map['publishedAt'] as String),
      content: map['content'] != null ? map['content'] as String : null,
    );
  }
}
