import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Portal"),
      ),
      body: Center(
        child: Container(
          child: Text("welcome to my project"),
        ),
      ),
      drawer: Drawer(
        child: Text("home"),
      ),
    );
  }
}
