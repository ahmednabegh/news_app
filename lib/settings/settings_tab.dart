import 'package:flutter/material.dart';
import 'package:news_app/settings/language_bottom_sheet.dart';

class SettingsTab extends StatefulWidget {


  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("",
            style: Theme.of(context).textTheme.subtitle1,),

          InkWell(
            onTap: (){
              showLanguageBottomSheet();
            },
            child: Container(
              margin: EdgeInsets.only(top: 10),
              padding: EdgeInsets.all(10),
              decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color:  Colors.transparent
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('language'
                    ,

                    style: Theme.of(context).textTheme.headline2,),
                  Icon(Icons.arrow_drop_down_circle_outlined)
                ],
              ),
            ),
          ),
          SizedBox(height: 12,),


        ],
      ),
    );
  }
  void showLanguageBottomSheet(){
    showModalBottomSheet(context: context,
        builder: (context){
          return LanguageBottomSheet();
        });

  }
}
