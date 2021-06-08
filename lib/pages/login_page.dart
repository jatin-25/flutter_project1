import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Login Page",
        style: TextStyle(
          fontSize: 40,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
        ),
      )),
    );
  }
}
