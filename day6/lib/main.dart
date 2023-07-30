import 'package:day6/first.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    routes: {"first": (context) => MyFirst()},
    initialRoute: "first",
  ));
}
