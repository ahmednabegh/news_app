import 'package:flutter/material.dart';
import 'package:news_app/model/NewsResponse.dart';
import 'package:news_app/my_theme.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsDeatailsScreen extends StatelessWidget {
  static const String routeName = "newsDetails";
  @override
  Widget build(BuildContext context) {
    var news = ModalRoute.of(context)!.settings.arguments as News;

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 220,
              clipBehavior: Clip.antiAlias,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Image.network(
                news.urlToImage ?? '',
                height: 100,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              news.author ?? '',
              style: TextStyle(
                fontSize: 12,
                color: MyTeme.greyColor,
              ),
            ),
            Text(
              news.title ?? '',
              style: TextStyle(
                fontSize: 18,
                color: MyTeme.blackColor,
              ),
            ),
            Text(
              news.publishedAt ?? '',
              style: TextStyle(
                fontSize: 12,
                color: MyTeme.greyColor,
              ),
              textAlign: TextAlign.end,
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              news.description ?? '',
              style: TextStyle(
                fontSize: 14,
                color: MyTeme.greyColor,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.end ,
              children: [
                TextButton(
                  onPressed: () =>_launchUrl(news.url),
                  child: Text(
                    'view full Article',
                    style: TextStyle(
                      color: MyTeme.blackColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Icon(Icons.arrow_forward_ios)

              ],
            ),
          ],
        ),
      ),
    );
  }
  Future<void>_launchUrl(String? url)async{
if (url == null) return;
var uri =Uri.parse(url);
if (await canLaunchUrl(uri)){
  launchUrl(uri);
};

  }

}
