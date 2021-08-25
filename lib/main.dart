import 'package:flutter/material.dart';
import 'package:shopping/Login.dart';
import 'package:shopping/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Homepage(),
      theme: ThemeData(primarySwatch: Colors.purple),
      routes: {"/": (context) => Login(), "home": (context) => Homepage()},
    );
  }
}
