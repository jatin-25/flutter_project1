import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int NoOfDays = 32;

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Text(
              "Welcome to my First Flutter App Made by Jatin.\nI want to complete it in $NoOfDays days."),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
