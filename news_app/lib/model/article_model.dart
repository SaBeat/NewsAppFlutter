import 'package:news_app/model/source_model.dart';

class Article {
  SourceApp source;
  String author;
  String title;
  String description;
  String urlToImage;
  String publishedAt;
  String content;
  String url;
  Article(
      {this.author,
      this.content,
      this.description,
      this.publishedAt,
      this.source,
      this.title,
      this.url,
      this.urlToImage});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      source: SourceApp.fromJson(json['source']),
      author: json['suthor'],
      content: json['content'],
      description: json['description'],
      publishedAt: json['publishedAt'],
      title: json['title'],
      url: json['url'],
      urlToImage: json['urlToImage'],
    );
  }
}
