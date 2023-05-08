import 'package:flutter/material.dart';
import 'package:login_page/screeens/homepage.dart';

class Loginpage extends StatelessWidget {
  Loginpage({Key? key}) : super(key: key);
  final _usernamecontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextFormField(
              controller: _usernamecontroller,
              decoration: const InputDecoration(
                  hintText: 'USERNAME', border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              
              controller: _passwordcontroller,
              decoration: const InputDecoration(
                
                
                  hintText: 'PASSWORD', border: OutlineInputBorder()),
              obscureText: true,
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton.icon(
                onPressed: (() {
                  checklogin(context);
                }),
                icon: const Icon(Icons.check),
                label: const Text('SUBMIT'))
          ],
        ),
      ),
    );
  }

  void checklogin(BuildContext context) {
    final username = _usernamecontroller.text;
    final password = _passwordcontroller.text;
    if (username == password) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: ((context) => const Homepage())));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.red,
          content: Text('Username and Password Does Not Match')));
    }
  }


}
