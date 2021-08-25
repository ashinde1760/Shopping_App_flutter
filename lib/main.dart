import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping/pages/Login.dart';
import 'package:shopping/pages/homepage.dart';
import 'package:shopping/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Homepage(),
      theme: ThemeData(
          primarySwatch: Colors.purple,
          fontFamily: GoogleFonts.lato().fontFamily),
      routes: {
        MyRoutes.login: (context) => Login(),
        MyRoutes.home: (context) => Homepage()
      },
    );
  }
}
