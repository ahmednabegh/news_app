import 'package:flutter/material.dart';
import 'package:news_app/category/category_item_widget.dart';
import 'package:news_app/model/category.dart';
import 'package:news_app/my_theme.dart';

class CategoryWidget extends StatelessWidget {
var categoryList = Category.getCategory();
  Function onCategoryItemClicked;
  CategoryWidget({required this.onCategoryItemClicked});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.stretch,
       children: [
         Text('Pick your category \n of interest',
         style: TextStyle(
           fontSize: 22,
           fontWeight: FontWeight.bold,
           color: MyTeme.blackColor
         ),),
         SizedBox(height: 12,),
         Expanded(
           child: GridView.builder(
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
             crossAxisCount: 2,
             mainAxisSpacing: 18,
             crossAxisSpacing: 18
           ),
             itemBuilder: ((context,index) {
             return InkWell(
                 onTap: (){
                   // category details
onCategoryItemClicked(categoryList[index]);
                 },
                 child: CategoryItemWidget(category: categoryList[index], index: index));
           }),
             itemCount: categoryList.length ,
           ),
         )
       ],
     ),
    );
  }
}
