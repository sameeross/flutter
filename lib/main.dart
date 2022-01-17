import 'package:cpc/homepage.dart';
import 'package:cpc/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.openSans().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => Loginpage(),
        Myroutes.homeroute: (context) => Homepage2(),
        Myroutes.loginroute: (context) => Loginpage(),
      },
    );
  }
}
