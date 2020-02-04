import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/styles.dart';
import 'package:news_app/model/news-article.dart';
import 'package:share/share.dart';

class NewsDetailsPage extends StatelessWidget {
  const NewsDetailsPage({this.newsArticle});

  final NewsArticle newsArticle;

  share(BuildContext context) {
  final RenderBox box = context.findRenderObject();

  Share.share("hhvghhgghghvghvghv",
      subject: 'test',
      sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
}

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          backgroundColor: Colors.white,
          actionsForegroundColor: Styles.darkGrey,
          trailing: GestureDetector(
            onTap: () {
              Share.share("${newsArticle.title} - ${newsArticle.descrption}");
            },
            child: Icon(CupertinoIcons.share_up, color: Styles.darkGrey,)),
        ),
        child: Container(
            color: Colors.white,
            child: SafeArea(
                top: false,
                child: SingleChildScrollView(
                    child: Column(
                  children: <Widget>[
                    Container(
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width,
                        decoration:
                            BoxDecoration(boxShadow: [Styles.imageShadow]),
                        child: newsArticle.urlToImage == null
                            ? Image.asset('images/placeholder.png',
                                fit: BoxFit.fill)
                            : Image.network(newsArticle.urlToImage,
                                fit: BoxFit.fill)),
                    Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          newsArticle.title,
                          style: Styles.newsheaderText,
                          textAlign: TextAlign.center,
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 20, right: 20, bottom: 20),
                        child: Text(
                          newsArticle.descrption,
                          style: Styles.descriptionText,
                        )),
                  ],
                )))));
  }
}
