import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

class MySecond extends StatefulWidget {
  const MySecond({Key? key}) : super(key: key);

  @override
  State<MySecond> createState() => _MySecondState();
}

class _MySecondState extends State<MySecond> {
  var starIcon = Icons.star_border_outlined;
  var starColor = Colors.black;

  var listDetails = [
    ["title1", 'subtitle 1'],
    ["title1", 'subtitle 2'],
    ["title1", 'subtitle 3'],
  ];

  var listDetails1 = [
    {"title": "title 1", "subtitle": "subtitle 222"},
    {"title": "title 1", "subtitle": "subtitle 222"},
    {"title": "title 1", "subtitle": "subtitle 222"}
  ];

  fetchDataFromInternet() async {
    var url =
        Uri.parse("http://universities.hipolabs.com/search?country=India");

    var resposne = await http.get(url);

    var body = jsonDecode(resposne.body);
    print(body[0]["name"]);
  }

  listItem(iconText, title, subtitle, date) {
    return Container(
      padding: EdgeInsets.only(right: 20, left: 20, top: 5, bottom: 5),
      height: 90,
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            child: Text("$iconText"),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$title",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text(
                  "$subtitle",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "$date",
                style: TextStyle(fontSize: 16),
              ),
              IconButton(
                  color: starColor,
                  iconSize: 26,
                  onPressed: () {
                    setState(() {
                      if (starIcon == Icons.star_border_outlined) {
                        starIcon = Icons.star;
                        starColor = Colors.red;
                      } else {
                        starIcon = Icons.star_border_outlined;
                        starColor = Colors.black;
                      }
                    });
                  },
                  icon: Icon(starIcon))
            ],
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    print("i have not run this function");
    fetchDataFromInternet();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ],
          title: Text(
            "Primary",
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () {
            // Fluttertoast.showToast(
            //     msg: "This is Center Short Toast",
            //     toastLength: Toast.LENGTH_SHORT,
            //     gravity: ToastGravity.CENTER,
            //     timeInSecForIosWeb: 1,
            //     backgroundColor: Colors.red,
            //     textColor: Colors.white,
            //     fontSize: 16.0);
            fetchDataFromInternet();
          },
          child: Icon(Icons.add),
        ),
        body: ListView.builder(
            itemCount: listDetails.length,
            itemBuilder: (context, index) {
              return listItem(
                  "S", listDetails[index][0], listDetails[index][1], "5:45PM");
            }));
  }
}

// listItem("S", "App dev cohort", 'this is desc', "5:45PM"),
