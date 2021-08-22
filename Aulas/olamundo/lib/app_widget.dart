import 'package:flutter/material.dart';
import 'package:olamundo/app_controller.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  final String? title;
  const AppWidget({Key? key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (BuildContext context, child) {
          return MaterialApp(
            theme: ThemeData(
                primaryColor: Colors.purple, brightness: Brightness.dark),
            home: HomePage(),
          );
        });
  }
}
