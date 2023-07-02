import 'package:flutter/material.dart';
import 'package:news_app/category/category_details_screen.dart';
import 'package:news_app/home_screen.dart';
import 'package:news_app/my_theme.dart';
import 'package:news_app/news/news_details_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return MaterialApp(
  routes: {
    HomeScreen.routeName: (context)=>HomeScreen(),
  CategoryDetails.routeName:(context)=>CategoryDetails(),
  NewsDeatailsScreen.routeName:(context)=>NewsDeatailsScreen(),
  },
  initialRoute: HomeScreen.routeName,
  theme: MyTeme.LightTheme,
);
  }
}