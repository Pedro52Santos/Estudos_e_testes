import 'package:flutter/material.dart';
import 'package:flutter_crud/components/user_tile.dart';
import 'package:flutter_crud/data/dummy_users.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final users = DUMMY_USERS;
    return Scaffold(
        appBar: AppBar(
          title: Text('Lista de Usuários'),
          actions: <Widget>[
            IconButton(
                onPressed: () {}, icon: Icon(Icons.add), color: Colors.white)
          ],
        ),
        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (ctx, i) => UserTile(users.values.elementAt(i)),
        ));
  }
}
