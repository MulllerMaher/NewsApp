import 'package:final_news_app/models/category_model.dart';
import 'package:final_news_app/views/category_view.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({required this.categoryModel});
  final CategoryModel categoryModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.pink,
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return CategoryView(categoryName: categoryModel.categoryName);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 1, left: 1),
        child: Container(
          height: 85,
          width: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(categoryModel.categoryImage),
                fit: BoxFit.fill,
              )),
          child: Text(
            categoryModel.categoryName,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
