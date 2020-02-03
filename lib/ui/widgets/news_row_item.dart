import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/news-article.dart';
import 'package:news_app/styles.dart';
import 'package:intl/intl.dart';

class NewsRowItem extends StatelessWidget {
  const NewsRowItem({this.newsArticle});

  final NewsArticle newsArticle;

  Widget build(BuildContext context) {
    final row = SafeArea(
      top: false,
      bottom: false,
      minimum: const EdgeInsets.only(
        left: 16,
        top: 8,
        bottom: 8,
        right: 8,
      ),
      child: Row(
        children: <Widget>[
          ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: newsArticle.urlToImage == null ? Image.asset('images/tree.jpg',width: 72,height: 72,fit: BoxFit.cover) : Image.network(newsArticle.urlToImage, height: 72, width: 72, fit: BoxFit.cover)),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(newsArticle.title != null
                      ? newsArticle.title
                      : 'default title', style: Styles.newsTitleText,),
                  const Padding(padding: EdgeInsets.only(top: 8)),
                  Text(DateFormat('dd-MM-yyyy').format(DateTime.parse(newsArticle.date)),
                    overflow: TextOverflow.ellipsis,
                    style: Styles.subText,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    return Column(
      children: <Widget>[
        row,
        Padding(
          padding: const EdgeInsets.only(
            left: 100,
            right: 16,
          ),
          child: Container(
            height: 1,
            color: Styles.newsRowDivider,
          ),
        )
      ],
    );
  }
}
