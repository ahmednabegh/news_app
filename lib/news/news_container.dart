import 'package:flutter/material.dart';
import 'package:news_app/api_manager.dart';
import 'package:news_app/model/NewsResponse.dart';
import 'package:news_app/model/SourseResponse.dart';
import 'package:news_app/news/news_item.dart';

class NewsContainer extends StatelessWidget {
Sources sources ;
NewsContainer({required this.sources});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsResponse>(
        future:ApiManager.getNews(sourceId:sources.id??'') ,
        builder: ((context,snapshot){
          if (snapshot.connectionState==ConnectionState.waiting){
            return Center(
              child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
              ),
            );
          }else if ( snapshot.hasError){
            return Column(
              children: [
                Text(snapshot.data?.message ??""),
                ElevatedButton(onPressed: (){},
                    child: Text('Try Again'))
              ],
            );

          }
          if ( snapshot.data?.status!='ok'){
            return Column(
              children: [
                Text(snapshot.data?.message ??""),
                ElevatedButton(onPressed: (){},
                    child: Text('Try Again'))
              ],
            );

          }
          var newsList = snapshot.data?.articles ??[];
          return ListView.builder
            (itemBuilder: ((context,index){
              return  NewsItem(news: newsList[index]) ;
          }),
            itemCount:  newsList.length,
          );
        }

        )
    );
  }
}
