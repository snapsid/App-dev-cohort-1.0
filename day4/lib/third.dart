import 'package:flutter/material.dart';

class MyThird extends StatefulWidget {
  const MyThird({Key? key}) : super(key: key);

  @override
  State<MyThird> createState() => _MyThirdState();
}

class _MyThirdState extends State<MyThird> {
  var name = ["apple", "samsung", "MI", "Blackberry", "OPPO"];

  listItem(index) {
    return Container(
      height: 70,
      child: Text(
        "${name[index]}",
        style: TextStyle(fontSize: 28),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("third"),
      ),
      body: ListView.builder(
          itemCount: name.length,
          itemBuilder: (context, index) {
            return listItem(index);
          }),
    );
  }
}
