import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/news-article.dart';
import 'package:news_app/styles.dart';
import 'package:intl/intl.dart';
import 'package:news_app/ui/pages/news_detail_page.dart';

class NewsRowItem extends StatelessWidget {
  const NewsRowItem({this.newsArticle});

  final NewsArticle newsArticle;

  Widget build(BuildContext context) {
    final row = SafeArea(
      top: false,
      bottom: false,
      minimum: const EdgeInsets.only(
        left: 12,
        top: 10,
        bottom: 20,
        right: 20,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    newsArticle.title != null
                        ? newsArticle.title
                        : 'default title',
                    style: Styles.newsTitleText,
                  ),
                  const Padding(padding: EdgeInsets.only(top: 15)),
                  Text(
                    DateFormat('dd-MM-yyyy')
                        .format(DateTime.parse(newsArticle.date)),
                    overflow: TextOverflow.ellipsis,
                    style: Styles.subText,
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(boxShadow: [Styles.lightimageShadow]),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(2),
                child: newsArticle.urlToImage == null
                    ? Image.asset('images/placeholder.png',
                        width: 160, height: 120, fit: BoxFit.cover)
                    : Image.network(newsArticle.urlToImage,
                        height: 120, width: 160, fit: BoxFit.cover)),
          )
        ],
      ),
    );

    return GestureDetector(
      onTap: () {
        print(newsArticle.title);
        navigateToDetailPage(context, newsArticle);
      },
      child: Column(
        children: <Widget>[
          row,
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 100,
            ),
            child: Container(
              height: 0,
              color: Styles.newsRowDivider,
            ),
          )
        ],
      ),
    );
  }

  Future navigateToDetailPage(context, news) async {
    Navigator.push(
        context,
        CupertinoPageRoute(
            builder: (context) => NewsDetailsPage(
                  newsArticle: news,
                )));
  }
}
