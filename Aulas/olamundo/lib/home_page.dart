import 'package:flutter/material.dart';
import 'package:olamundo/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  int contador = 0;
  bool isDark = false;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App flutter ADS'),
      ),
      body: Center(
        child: Switch(
          value: AppController.instance.isDark,
          onChanged: (value) {
            setState(() {
              AppController.instance.changeTheme();
            });
          },
        ),
      ), //é a variavel container declarada anteriormente
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



/*var container = Container(
        height: 150,
        width: 150,
        color: Colors.red,
        child: Center(
            child: Container(
          height: 50,
          width: 50,
          color: Colors.cyan,
          child: Icon(Icons.download),
        ))); */