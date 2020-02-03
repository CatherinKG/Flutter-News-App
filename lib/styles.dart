import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

abstract class Styles {
  static const TextStyle newsTitleText = TextStyle(
    color: Color.fromRGBO(210, 46, 46, 1),
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    fontFamily: "Roboto"
  );

  static const TextStyle subText = TextStyle(
    color: Color.fromRGBO(188, 188, 188, 1),
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    fontFamily: "Roboto"
  );

  static const Color newsRowDivider = Color.fromRGBO(223, 223, 223, 1);

}
