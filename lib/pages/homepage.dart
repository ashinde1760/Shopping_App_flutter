import 'package:flutter/material.dart';
import 'package:shopping/widgets/drawer.dart';

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
      drawer: MyDrawer(

      ),
    );
  }
}
