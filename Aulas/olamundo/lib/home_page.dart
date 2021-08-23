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
        actions: [CustomSwitch()],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: CustomSwitch()),
            Container(
              height: 150,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.amber,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.amber,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.amber,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.amber,
            ),
            Container(
              width: 50,
              height: 450,
              color: Colors.amber,
            ),
            Container(
              width: 50,
              height: 950,
              color: Colors.blue,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.amber,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.amber,
                ),
                Container(
                  width: 150,
                  height: 50,
                  color: Colors.blueGrey,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.redAccent,
                ),
              ],
            )
          ],
        ),
      ),
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

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDark,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
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