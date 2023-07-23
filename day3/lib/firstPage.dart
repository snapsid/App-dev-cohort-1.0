import 'package:flutter/material.dart';

class MyFirstPage extends StatelessWidget {
  const MyFirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var text = "hey";
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          title: ElevatedButton(
            child: Text("hii"),
            onPressed: () {},
          )),
      body: Container(
        child: Column(
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 30),
            ),
            Container(
              color: Colors.blue,
              height: 400,
              width: 200,
            ),
            Expanded(child: Container()),
            Text(
              "hii",
              style: TextStyle(fontSize: 30),
            )
          ],
        ),
      ),
    );
  }
}
