import 'package:flutter/material.dart';
import 'package:flutter_dev/utils/routes.dart';

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.white,
  primary: Colors.blue,
  minimumSize: Size(120, 40),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);

class LoginPage extends StatefulWidget {
  // const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 22),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: Image.asset(
                  "images/login_image.png",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 15),
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
                onChanged: (value) {
                  name = value;
                  setState(() {});
                },
              ),
              TextFormField(
                obscureText: true,
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
                height: 25,
              ),
              InkWell(
                onTap: () async {
                  
                  
                  setState(() {
                    changeButton = true;
                  });

                  await Future.delayed(Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  height: 45,
                  width: changeButton ? 45 : 120,
                  alignment: Alignment.center,
                  child: changeButton ? Icon(Icons.done,color: Colors.white,):
                  Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 45 : 8)),
                ),
              )

              // ElevatedButton(
              //   style: raisedButtonStyle,
              //   onPressed: () {
              //     Navigator.pushNamed(context, MyRoutes.homeRoute);
              //   },
              //   child: Text(
              //     'Login',
              //     style: TextStyle(
              //       color: Colors.white,
              //       fontSize: 18,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
