import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:news_app/ui/news_home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: NewsHomePage(),
    );
  }
}
