import 'dart:html';

import 'package:flutter/material.dart';
import 'package:olamundo/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                    'data:image/png;base64,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'),
                TextField(
                  onChanged: (text) => email = text,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: 'Email:', border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  onChanged: (text) => senha = text,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Senha:', border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (email == '@email.com' && senha == '123') {
                        print('login sendo feito');
                        Navigator.of(context).pushReplacementNamed('/home');
                      } else {
                        print('Login incorreto');
                      }
                    },
                    child: Text('login'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
