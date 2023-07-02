import 'package:flutter/material.dart';

class LanguageBottomSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [






//
// [
//
           Text('English',
             style: Theme.of(context).textTheme.headline3,
         ),
//             Icon(Icons.check,color: Theme.of(context).primaryColor,)
// ],  ),

          SizedBox(height: 12,),





           Text('Arabic',

             style: Theme.of(context).textTheme.headline2,

           ),
        ],
      ),
    );
  }
  Widget getSelectedWidget(String text,BuildContext context){
    return
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:
        [

          Text(text,
            style: Theme.of(context).textTheme.headline3,
          ),
          Icon(Icons.check,color: Theme.of(context).primaryColor,)
        ],  );


  }
}
