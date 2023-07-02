// class SourceResponse {
//   String? status ;
//   List<Source>? sources ;
//   String? code;
//   String? message;
// }
// class Source{
//   String? id ;
//   String? name ;
//   String? description ;
//   String? url ;
//   String? language ;
//   String? country ;
//   String? category ;
//
//   Source({required this.id , required this.name , required this.description,required this.category
//  , required this.language,required this.country , required this.url});
// /// object => json (serlization)
// /// json => object (deserlization)
//
// Source.fromJson(Map<String,dynamic> json) :this (
//   id: json['id'] as String?,
//     name: json['name'] as String?,
//     url: json['url'] as String?,
//     description: json['description'] as String?,
//     category: json['category'] as String?,
//     country: json['country'] as String?,
//     language: json['language'] as String?,
//
// );
// Map<String,dynamic> toJson(){
//   return {
//     "id": id,
//     "name":name ,
//     "url":url ,
//     "description":description ,
//     "category":category ,
//     "country": country,
//     "language":language ,
//
//
//
//   };
// }
//
// }