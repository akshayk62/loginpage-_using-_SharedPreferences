import 'package:flutter/material.dart';
import 'package:login_page/screeens/login_page.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HOME'),
        actions: [
          IconButton(
              onPressed: (() {
                signout(context);
              }),
              icon: const Icon(Icons.exit_to_app))
        ],
      ),
      body: const Center(
        child: Text(
          'SUCCESS',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
    );
  }

  signout(BuildContext context) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: ((context) => Loginpage())),
        (route) => false);
  }
}
