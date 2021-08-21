import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  int contador = 0;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('App flutter ADS'),
        ),
        body: Center(
          child: Center(
              child: GestureDetector(
            child: Text(
              'Click: $contador',
              style: TextStyle(fontSize: 50),
            ),
            onTap: () {
              setState(() {
                contador++;
                print(contador);
              });
            },
          )),
        ));
    throw UnimplementedError();
  }
}
