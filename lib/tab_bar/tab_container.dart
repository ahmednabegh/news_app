import 'package:flutter/material.dart';
import 'package:news_app/model/SourseResponse.dart';
import 'package:news_app/news/news_container.dart';
import 'package:news_app/tab_bar/tab_item.dart';
class TabContainer extends StatefulWidget {
  List<Sources> sourcesList ;

  TabContainer({required this.sourcesList});

  @override
  State<TabContainer> createState() => _TabContainerState();
}

class _TabContainerState extends State<TabContainer> {
  int selectedIndex =0 ;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: widget.sourcesList.length,
        child: Column(
          children: [
            TabBar(
              onTap: (index){
               selectedIndex=index;
               setState(() {

               });
              },
              isScrollable: true,
              indicatorColor: Colors.transparent,
              tabs:widget.sourcesList.map((source) => TabItem(source: source,
                  isSelected: selectedIndex==widget.sourcesList.indexOf(source))).toList()
            ),
            Expanded(child: NewsContainer(sources: widget.sourcesList[selectedIndex]))
          ],
        )
    );
  }
}
