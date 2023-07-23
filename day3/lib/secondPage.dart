import 'package:flutter/material.dart';

class MySecondPage extends StatefulWidget {
  const MySecondPage({Key? key}) : super(key: key);

  @override
  State<MySecondPage> createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
  var text = "hey";

  var appbarColor = Colors.green;

  double fontS = 22;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarColor,
        title: Text("second page"),
      ),
      body: Container(
        child: Column(
          children: [
            Text(
              text,
              style: TextStyle(fontSize: fontS),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                  appbarColor = Colors.red;
                  print(" before changing $text");

                  print("after changing $text");

                  Navigator.pushNamed(context, "thirdPage");
                },
                child: Text("click me")),
            Image.asset(
              "assets/image1.png",
            )
          ],
        ),
      ),
    );
  }
}
