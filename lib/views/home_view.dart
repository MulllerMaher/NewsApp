import 'package:final_news_app/models/category_model.dart';
import 'package:final_news_app/widgets/categories_list_view.dart';
import 'package:final_news_app/widgets/category_card.dart';
import 'package:final_news_app/widgets/news_list_view_builder.dart';
import 'package:final_news_app/widgets/news_list_views.dart';
import 'package:final_news_app/widgets/news_tile.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'News',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                ' Cloud',
                style: TextStyle(color: Colors.orange),
              ),
            ],
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CategoriesListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
             NewsListViewBuilder(categoryName: 'general',),
            
          ],
        ));
  }
}
