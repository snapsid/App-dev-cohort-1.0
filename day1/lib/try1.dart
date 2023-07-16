import 'package:day1/try2.dart';

main() {
  // print("hello");

  var a = 2;
  var b = "hello";

  var c = ["apple", "ball", "cat"];

  // for (var i in c) {
  //   print(i);
  // }

  var data = ["12345", "Delhi"];

  // print(data[0]);

  var d = {"name": "Sid", "phone": 7999};

  // print(d["name"]);

  data1("Sid", 12345, "s@gmail.com", "India");

  data2(phone: 1234, name: "Sid", email: "a@gmail.com", country: "US");
  data2(phone: 1234, name: "Sid", email: "a@gmail.com", country: "CANADA");

  abcd();
}

data1(name, email, phone, country) {
  print("name $name, email $email, phone $phone, country $country");
}

data2({name, email, phone, country = 'INDIA'}) {
  print("name $name, email $email, phone $phone, country $country");
}
