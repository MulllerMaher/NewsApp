import 'package:dio/dio.dart';
import 'package:final_news_app/models/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticleModel>> getNews({required String categoryName}) async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?category=$categoryName&apiKey=2d3c8ef8ae9c444e9e97d566d8592621');

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];

    List<ArticleModel> articlesList = [];
    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description']);
      articlesList.add(articleModel);
    }
    return articlesList;
  }
}
