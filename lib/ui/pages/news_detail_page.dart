import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/styles.dart';

class NewsDetailsPage extends StatelessWidget {

  final navigationBar = CupertinoSliverNavigationBar(
    transitionBetweenRoutes: true,
    backgroundColor: Colors.red,
  );

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Colors.white,
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
                    decoration: BoxDecoration(boxShadow: [Styles.imageShadow]),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8)),
                      child:
                          Image.asset('images/balloon.jpg', fit: BoxFit.cover),
                    )),
                Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Type of paper in catalog printing',
                      style: Styles.newsheaderText,
                      textAlign: TextAlign.center,
                    )),
                Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. \n\n Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      style: Styles.descriptionText,
                    )),
              ],
            )))) )
    
    ;
  }
}
