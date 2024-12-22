
import 'package:final_news_app/models/article_model.dart';

import 'package:final_news_app/widgets/news_tile.dart';
import 'package:flutter/material.dart';

class NewsListViews extends StatelessWidget {
  List<ArticleModel> articles;
  NewsListViews({required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return NewsTile(
        articleModel: articles[index],
      );
    }));
  }
}
