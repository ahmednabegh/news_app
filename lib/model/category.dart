import 'package:flutter/material.dart';
import 'package:news_app/my_theme.dart';

class Category { //data class
  String id ;
  String title;
  String imagePath ;
  Color backgroundColor ;

  Category({required this.id,
    required this.title,
    required this.imagePath,
    required this.backgroundColor,


  });
//business / entertainment/ general health
// / science / sports / technology
 static List<Category> getCategory(){
    return [
      Category(id: 'sports',
        title: 'Sports',
        imagePath: 'assets/images/sports.png',
        backgroundColor: MyTeme.redColor),
      Category(id: 'technology',
          title: 'technology',
          imagePath: 'assets/images/Politics.png',
          backgroundColor: MyTeme.darkBlueColor),
      Category(id: 'health',
          title: 'Health',
          imagePath: 'assets/images/health.png',
          backgroundColor: MyTeme.pinkColor),
      Category(id: 'business',
          title: 'Bussines',
          imagePath: 'assets/images/bussines.png',
          backgroundColor: MyTeme.brownColor),
      Category(id: 'entertainment',
          title: 'Environment',
          imagePath: 'assets/images/environment.png',
          backgroundColor: MyTeme.blueColor),
      Category(id: 'science',
          title: 'Science',
          imagePath: 'assets/images/science.png',
          backgroundColor: MyTeme.yellowColor),
      Category(id: 'general',
          title: 'General',
          imagePath: 'assets/images/science.png',
          backgroundColor: MyTeme.yellowColor),

    ];
  }
}