import 'package:day4/firstPage.dart';
import 'package:day4/namePage.dart';
import 'package:day4/secondPage.dart';
import 'package:day4/third.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      'first': (context) => MyFirst(),
      'second': (context) => MySecond(),
      'third': (context) => MyThird(),
      'name': (context) => MyNamePage()
    },
    initialRoute: "second",
  ));
}
