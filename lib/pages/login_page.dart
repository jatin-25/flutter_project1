import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  // const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: Image.asset(
              "images/login_image.png",
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "Welcome",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Enter Username",
                labelText: "Username",
                labelStyle: TextStyle(
                  fontSize: 20,
                ),
                hintStyle: TextStyle(
                  fontSize: 20,
                )),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter Password",
              labelText: "Password",
              hintStyle: TextStyle(
                fontSize: 20,
              ),
              labelStyle: TextStyle(
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
