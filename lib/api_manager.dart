import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app/model/NewsResponse.dart';
import 'package:news_app/model/SourseResponse.dart';
class ApiManager{
  static const String  baseUrl ="newsapi.org";
static Future<SourseResponse> getSources(String categoryId)async{
  //GET https://newsapi.org/v2/top-headlines/sources?apiKey=52bce7c6221d416d8532022062c67636
  var url = Uri.https(baseUrl,'/v2/top-headlines/sources',{
    "apiKey":"52bce7c6221d416d8532022062c67636",
    "category":categoryId

  });
  var response = await http.get(url); // response
  try{
 var bodyString= response.body; // body (string)
var json = jsonDecode(bodyString); // json
var sourseResponse=SourseResponse.fromJson(json); // source response
  return sourseResponse;
}catch(e){
    throw e ;
  }
}


static Future<NewsResponse> getNews({String? sourceId,String? searchKeyword})async{
  //https://newsapi.org/v2/everything?q=bitcoin&apiKey=52bce7c6221d416d8532022062c67636
  
  var url= Uri.https(baseUrl,"/v2/everything",
  {
    "apiKey":"52bce7c6221d416d8532022062c67636",
    "sources":sourceId,
    "q": searchKeyword

  }
  );
  try{
var response =await http.get(url);
var bodyString =response.body;
var json = jsonDecode(bodyString);
var newsResponse = NewsResponse.fromJson(json);
return newsResponse;
}catch(e){
    throw e;
  }
}
}