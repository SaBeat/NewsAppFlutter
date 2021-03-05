import 'dart:convert';
import 'package:http/http.dart';
import 'package:news_app/model/article_model.dart';

class ApiServices {
  final endPoint =
      'http://newsapi.org/v2/everything?q=apple&from=2021-03-01&to=2021-03-01&sortBy=popularity&apiKey=964eeec67d2848e287bdbdc05bf00d35';
  Future<List<Article>> getArticle() async {
    Response response = await get(endPoint);
    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['articles'];
      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw ('Cant get the Article');
    }
  }
}
