import 'package:flutter/material.dart';
import 'package:news_app/api_manager.dart';
import 'package:news_app/model/NewsResponse.dart';
import 'package:news_app/news/news_item.dart';

class NewsSearch extends SearchDelegate{
@override
  List<Widget>? buildActions(BuildContext context) {
   return[

     IconButton
     (onPressed: ()=>showResults(context),
       icon: Icon(
         Icons.search,
         size: 25,
       ))];
  }
  @override
  Widget? buildLeading(BuildContext context) {
   return IconButton
     (onPressed: ()=>Navigator.of(context).pop(),
       icon: Icon(
         Icons.close,
         size: 25,
       ));

  }
  @override
  Widget buildResults(BuildContext context) {
    return FutureBuilder<NewsResponse>(
        future:ApiManager.getNews(searchKeyword:query) ,
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
  @override
  Widget buildSuggestions(BuildContext context) {
  if (query.isEmpty){
    return Text('search');
  }else{
    return FutureBuilder<NewsResponse>(
        future:ApiManager.getNews(searchKeyword:query) ,
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
}