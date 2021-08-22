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
      body: Container(
        height: 50,
        width: 50,
        color: Colors.red,
      ),
      //botões são inseridos no rodapé.
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_circle),
        onPressed: () {
          setState(() {
            contador--;
          });
        },
      ),
    );
    throw UnimplementedError();
  }
}

/*
Center(
        child: Center(
            child: GestureDetector(
          child: Text(
            'Click: $contador',
            style: TextStyle(fontSize: 50),
          ),
          onTap: () {
            setState(() {
              contador++;
              //print(contador);
            });
          },
        )), 
 */