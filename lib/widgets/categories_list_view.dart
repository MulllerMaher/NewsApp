import 'package:final_news_app/models/category_model.dart';
import 'package:final_news_app/widgets/category_card.dart';
import 'package:flutter/material.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({super.key});
  List<CategoryModel> categorisList = [
    CategoryModel(categoryImage: 'assets/general.png', categoryName: 'General'),
    CategoryModel(categoryImage: 'assets/health.avif', categoryName: 'Health'),
    CategoryModel(categoryImage: 'assets/sports.jpg', categoryName: 'Sports'),
    CategoryModel(
        categoryImage: 'assets/entertaiment.avif',
        categoryName: 'Entertainment'),
    CategoryModel(
        categoryImage: 'assets/buisness.jpg', categoryName: 'business'),
    CategoryModel(
        categoryImage: 'assets/science.avif', categoryName: 'Science'),
    CategoryModel(
        categoryImage: 'assets/technology.jpeg', categoryName: 'technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          itemCount: categorisList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return CategoryCard(categoryModel: categorisList[index]);
          }),
    );
  }
}
