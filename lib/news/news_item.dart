import 'package:flutter/material.dart';
import 'package:news_app/model/NewsResponse.dart';
import 'package:news_app/my_theme.dart';
import 'package:news_app/news/news_details_screen.dart';

class NewsItem extends StatelessWidget {
News news;
NewsItem({required this.news});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
Navigator.of(context).pushNamed(NewsDeatailsScreen.routeName,arguments: news);
      },
      child:

      Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 220,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15)
              ),
              child:Image.network(news.urlToImage??''
         , height: 100,
              width: double.infinity,
              fit: BoxFit.cover,) ,


            ),
            Text(news.author??'',
            style: TextStyle(
              fontSize: 12,
              color: MyTeme.greyColor,
            ),
            ),
            Text(news.title??'',
              style: TextStyle(
                fontSize: 18,
                color: MyTeme.blackColor,
              ),
            ),
            Text(news.publishedAt??'',
              style: TextStyle(
                fontSize: 12,
                color: MyTeme.greyColor,
              ),
              textAlign: TextAlign.end,
            ),

          ],
        ),
      ),
    );
  }
}
