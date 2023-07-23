import 'package:day4/namePage.dart';
import 'package:flutter/material.dart';

class MyFirst extends StatefulWidget {
  const MyFirst({Key? key}) : super(key: key);

  static var nameGlobal = "";

  @override
  State<MyFirst> createState() => _MyFirstState();
}

class _MyFirstState extends State<MyFirst> {
  var textF = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First"),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  textF = value;
                });
              },
              decoration: InputDecoration(
                  hintText: "Name", border: OutlineInputBorder()),
            ),
            ElevatedButton(
                onPressed: () {
                  print("name is $textF");
                  MyFirst.nameGlobal = textF;
                  Navigator.pushNamed(context, "name");
                },
                child: Text("Submit")),
            Text(textF)
          ],
        ),
      ),
    );
  }
}
