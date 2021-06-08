import 'package:flutter/material.dart';
import 'package:flutter_dev/pages/home_page.dart';
import 'package:flutter_dev/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark(),
      initialRoute: "/login",
      routes: {
        "/": (context) =>
            HomePage(), //By Default "/" is default page that opens
        //but if we want to make "/login" default we use initial route.
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
      },
    );
  }
}
