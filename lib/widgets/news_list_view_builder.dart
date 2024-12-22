import 'package:dio/dio.dart';
import 'package:final_news_app/models/article_model.dart';
import 'package:final_news_app/services/news_service.dart';
import 'package:final_news_app/widgets/news_list_views.dart';
import 'package:flutter/material.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key,required this.categoryName});
  final String categoryName;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    future = NewsService(Dio()).getNews(categoryName: widget.categoryName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListViews(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: Center(child: Text('Error: ${snapshot.error}')),
          );
        } else {
          return SliverToBoxAdapter(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}


/*
bool isLoading = true;
  List<ArticleModel> articles = [];
  @override
  void initState() {
    getGeneralNews();
    super.initState();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService(Dio()).getNews();
    isLoading = false;
    setState(() {});
  }
 isLoading
        ? SliverToBoxAdapter(
            child: CircularProgressIndicator(),
          )
        : NewsListViews(articles: articles,
            
          );
          */