import 'package:flutter/material.dart';

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.white,
  primary: Colors.blue,
  minimumSize: Size(120, 40),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);

class LoginPage extends StatelessWidget {
  // const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 22),
        child: Column(
          children: [
            SizedBox(height: 40),
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
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: raisedButtonStyle,
              onPressed: () {},
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
