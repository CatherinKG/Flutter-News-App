import 'package:news_app/utlils/constants.dart';
import 'package:news_app/services/webservice.dart';
import 'dart:convert';

class NewsArticle {
  
  final String title; 
  final String descrption; 
  final String urlToImage; 
  final String date;

  NewsArticle({this.title, this.descrption, this.urlToImage, this.date});

  factory NewsArticle.fromJson(Map<String,dynamic> json) {
    return NewsArticle(
      title: json['title'], 
      descrption: json['description'], 
      urlToImage: json['urlToImage'] ?? Constants.placeholderImage,
      date: json['publishedAt']
    );
  }

static Resource<List<NewsArticle>> get all {
    
    return Resource(
      url: Constants.newsEndPoint,
      parse: (response) {
        final result = json.decode(response.body); 
        Iterable list = result['articles'];
        return list.map((model) => NewsArticle.fromJson(model)).toList();
      }
    );

  }  

}
