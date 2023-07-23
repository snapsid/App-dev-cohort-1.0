import 'package:day4/firstPage.dart';
import 'package:flutter/material.dart';

class MyNamePage extends StatefulWidget {
  const MyNamePage({Key? key}) : super(key: key);

  @override
  State<MyNamePage> createState() => _MyNamePageState();
}

class _MyNamePageState extends State<MyNamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Name page"),
      ),
      body: Center(
        child: Text(MyFirst.nameGlobal, style: TextStyle(fontSize: 28)),
      ),
    );
  }
}
