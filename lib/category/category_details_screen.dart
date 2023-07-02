import 'package:flutter/material.dart';
import 'package:news_app/api_manager.dart';
import 'package:news_app/model/SourseResponse.dart';
import 'package:news_app/model/category.dart';
import 'package:news_app/tab_bar/tab_container.dart';

class CategoryDetails extends StatelessWidget {
static const String routeName= "categoryDetails";
Category? category;
CategoryDetails({ this.category});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourseResponse>(
      future: ApiManager.getSources(category?.id??''),
        builder: ((context,snapshot){
if(snapshot.connectionState== ConnectionState.waiting)
return  Center(
  child: CircularProgressIndicator(
    color: Theme.of(context).primaryColor,
  ),

);
else if (snapshot.hasError){
  return Column(
    children: [
      Text('something went wrong'),
      ElevatedButton(onPressed: (){},
          child: Text('Try Again'))
    ],
  );
}
if (snapshot.data?.status != 'ok'){
  // server has got massege
  return Column(
    children: [
      Text(snapshot.data?.message ??""),
      ElevatedButton(onPressed: (){},
          child: Text('Try Again'))
    ],
  );
}
var sourceList = snapshot.data?.sources ?? [];
return TabContainer(sourcesList: sourceList);

    })
    );
  }
}
