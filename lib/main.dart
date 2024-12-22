import 'package:final_news_app/views/category_view.dart';
import 'package:final_news_app/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
