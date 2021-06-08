import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int noOfDays = 32;
    String name = "Jatin";

    return Scaffold(
      appBar: AppBar(
        title: Text("Catelog App"),
      ),
      body: Center(
        child: Container(
          child: Text(
              "Welcome to my First Flutter App Made by $name.\nI want to complete it in $noOfDays days."),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
