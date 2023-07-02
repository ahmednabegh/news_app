import 'package:flutter/material.dart';
import 'package:news_app/model/SourseResponse.dart';
import 'package:news_app/my_theme.dart';
class TabItem extends StatelessWidget {
Sources source;
bool isSelected ;
TabItem ({required this.source , required this.isSelected});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(top: 12),
      decoration: BoxDecoration(
        color: isSelected? MyTeme.primaryLightColor:Colors.transparent,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Theme.of(context).primaryColor)
      ),
      child: Text(
        source.name ?? '',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: isSelected ? MyTeme.whiteColor : MyTeme.primaryLightColor
            
        ),






      ),

    );
  }
}
