import 'package:day3/firstPage.dart';
import 'package:day3/secondPage.dart';
import 'package:day3/thirdPage.dart';
import 'package:flutter/material.dart';

onClickButton() {
  print("button clicked");
}

void main() {
  runApp(MaterialApp(
    initialRoute: 'firstPage',
    debugShowCheckedModeBanner: false,
    routes: {
      'firstPage': (context) => MyFirstPage(),
      'secondPage': (context) => MySecondPage(),
      'thirdPage': (context) => MyThirdPage()
    },
  ));
}
