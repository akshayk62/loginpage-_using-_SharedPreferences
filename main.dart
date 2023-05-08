import 'package:flutter/material.dart';
import 'package:login_page/screeens/login_page.dart';

// ignore: constant_identifier_names
const SAVE_KEY_NAME = 'Userloggedin';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login_Page',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Loginpage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
