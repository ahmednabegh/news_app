import 'package:flutter/material.dart';
import 'package:news_app/my_theme.dart';
import 'package:news_app/settings/settings_tab.dart';

class HomeDrawer extends StatelessWidget {
  static const int categories = 1;
  static const int settings = 2;

  Function onItemSideMenu;
HomeDrawer({required this.onItemSideMenu});
  @override
  Widget build(BuildContext context) {
    return Column(
children: [
  Container(
    width: double.infinity,
    padding: EdgeInsets.symmetric(vertical: 64),
    color: MyTeme.primaryLightColor,
    child: Text('News App!',
      style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        color: MyTeme.whiteColor,

      ),
      textAlign: TextAlign.center,

    ),
  ),
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      onTap: (){
onItemSideMenu(HomeDrawer.categories);
      },
      child: Row(
        children: [
          Icon(Icons.list,size: 35,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Categories",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
          )
        ],
      ),
    ),
  ),
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      onTap: (){

        onItemSideMenu(HomeDrawer.settings);

      },
      child: Row(
        children: [
          Icon(Icons.settings,size: 35,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Settings",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),),
          )
        ],
      ),
    ),
  ),
],
    );
  }
}
