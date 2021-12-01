import 'package:flutter/material.dart';
import 'package:flutter_crud/models/user.dart';
import 'package:flutter_crud/provider/users.dart';
import 'package:flutter_crud/routes/app_routes.dart';
import 'package:provider/provider.dart';

class UserTile extends StatelessWidget {
  final User user;
  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarURL == '' || user.avatarURL.isEmpty
        ? CircleAvatar(
            child: Icon(Icons.person),
          )
        : CircleAvatar(
            backgroundImage: NetworkImage(user.avatarURL),
          );
    return ListTile(
        leading: avatar,
        title: Text(user.name),
        subtitle: Text(user.email),
        trailing: Container(
            width: 100,
            child: Row(children: <Widget>[
              IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    AppRoutes.USER_FORM,
                    arguments: user,
                  );
                },
                icon: Icon(Icons.edit),
                color: Colors.orange,
              ),
              IconButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                            title: Text('Excluir Usuário'),
                            content: Text('Tem certesa?'),
                            actions: <Widget>[
                              /**
                               * IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.USER_FORM);
              },
              icon: Icon(Icons.add),
              color: Colors.white)
                               */
                              IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(false);
                                  },
                                  icon: Icon(Icons.cancel),
                                  color: Colors.red),
                              IconButton(
                                onPressed: () {
                                  Provider.of(context, listen: false)
                                      .remove(user);
                                  Navigator.of(context).pop(true);
                                },
                                icon: Icon(Icons.blur_circular_outlined),
                                color: Colors.green,
                              )
                            ],
                          )).then((value) {
                    if (value) {
                      Provider.of<Users>(context, listen: false).remove(user);
                    }
                  });
                },
                icon: Icon(Icons.delete),
                color: Colors.red,
              ),
            ])));
  }
}
