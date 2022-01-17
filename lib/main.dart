import 'package:cpc/homepage.dart';
import 'package:cpc/loginpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/homepage",
      routes: {
        "/": (context) => Loginpage(),
        "/homepage": (context) => Homepage2(),
        "/homepage2": (context) => Homepage(),
      },
    );
  }
}
