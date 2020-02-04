import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

abstract class Styles {
  static const TextStyle newsTitleText = TextStyle(
      color: Color.fromRGBO(210, 46, 46, 1),
      fontSize: 16,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w600,
      fontFamily: "Roboto");

  static const TextStyle newsheaderText = TextStyle(
      color: Color.fromRGBO(54, 70, 78, 1),
      fontSize: 34,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      fontFamily: "Roboto");

  static const TextStyle subText = TextStyle(
      color: Color.fromRGBO(188, 188, 188, 1),
      fontSize: 14,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w600,
      fontFamily: "Roboto");

  static const TextStyle descriptionText = TextStyle(
      color: Color.fromRGBO(96, 96, 96, 0.8),
      fontSize: 18,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      fontFamily: "Roboto",
      height: 1.5);

  static const Color newsRowDivider = Color.fromRGBO(223, 223, 223, 1);
  static const Color darkGrey = Color.fromRGBO(54, 70, 78, 1);

  static const BoxShadow imageShadow = BoxShadow(
      color: Color.fromRGBO(223, 223, 223, 1),
      spreadRadius: 5,
      blurRadius: 2,
      offset: Offset(0, 4));
}
