import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/model/news-article.dart';
import 'package:news_app/styles.dart';
import 'package:news_app/ui/pages/news_detail_page.dart';
import 'package:news_app/ui/widgets/news_row_item.dart';
import 'package:news_app/services/webservice.dart';
// import 'package:news_app/styles.dart';

class NewsHomePage extends StatefulWidget {
  NewsHomePageState createState() => NewsHomePageState();
}

class NewsHomePageState extends State<NewsHomePage> {
  List<NewsArticle> _newsArticles = List<NewsArticle>();

  @override
  void initState() {
    super.initState();
    _populateNewsArticles();
  }

  void _populateNewsArticles() {
    Webservice().load(NewsArticle.all).then((newsArticles) => {
          setState(() => {_newsArticles = newsArticles})
        });
  }

  final navigationBar = CupertinoSliverNavigationBar(
    largeTitle: Text('Headlines'),
  );

  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        semanticChildCount: _newsArticles.length,
        slivers: <Widget>[
          navigationBar,
          SliverSafeArea(
            top: false,
            minimum: const EdgeInsets.only(top: 10),
            sliver: SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              if (index < _newsArticles.length) {
                return NewsRowItem(newsArticle: _newsArticles[index]);
              }
            })),
          )
        ],
      ),
    );
  }
}
