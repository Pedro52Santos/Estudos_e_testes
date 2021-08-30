import 'package:app_flutter/views/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//-----------------------------------------------------------------10:02 apagar aqui!!!
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Home(),
    );
  }
}
