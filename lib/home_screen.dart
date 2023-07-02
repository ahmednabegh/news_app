import 'package:flutter/material.dart';
import 'package:news_app/category/category_details_screen.dart';
import 'package:news_app/category/category_widget.dart';
import 'package:news_app/home_drawer.dart';
import 'package:news_app/model/category.dart';
import 'package:news_app/my_theme.dart';
import 'package:news_app/news/news_search.dart';
import 'package:news_app/settings/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "home screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        color: MyTeme.whiteColor,
        child: Image.asset('assets/images/pattern.png',
        fit: BoxFit.cover,
        height: double.infinity,
        width: double.infinity,),
      ),

      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            'News App',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [IconButton(onPressed: ()=>showSearch(context: context,
              delegate: NewsSearch()),
              icon:Icon(

              Icons.search,
                size: 32,
    )  )],
        ),
        drawer: Drawer(
          child: HomeDrawer(onItemSideMenu: onItemSideMenuClicked),
        ),
        body:
        selectedItemDrawer == HomeDrawer.settings?
            SettingsTab()
        :


        selectedCategory == null?
            CategoryWidget(onCategoryItemClicked: onCategoryItemClicked)
      :
      CategoryDetails(category: selectedCategory),
      ),
    ]);
  }

  Category? selectedCategory = null ;

  void onCategoryItemClicked(Category category){
selectedCategory = category;
setState(() {

});
  }
int selectedItemDrawer =HomeDrawer.categories;
  void onItemSideMenuClicked(int newSelectedItemDrawer){
    selectedItemDrawer=newSelectedItemDrawer;
    selectedCategory=null;
    Navigator.pop(context);
    setState(() {
      
    });
  }
}
