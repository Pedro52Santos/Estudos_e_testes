import 'package:flutter/material.dart';
import 'package:flutter_crud/models/user.dart';
import 'package:flutter_crud/provider/users.dart';
import 'package:provider/provider.dart';

class UserForm extends StatelessWidget {
  final Map<String, String> _formData = {};
  final _form = GlobalKey<FormState>();
  // ignore: unused_element
  void _loadFormData(User user) {
    _formData['id'] = user.id;
    _formData['name'] = user.name;
    _formData['email'] = user.email;
    _formData['avatarURL'] = user.avatarURL;
  }

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)!.settings.arguments as User;
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário de usuário'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final isValid = _form.currentState!.validate();
              if (isValid) {
                _form.currentState!.save();
                Provider.of<Users>(context, listen: false).put(User(
                  //tecnicamente falando a variavel dentro do map torna-se tipo string agora, espero que dê certo.
                  id: _formData['id'].toString(),
                  name: _formData['name'].toString(),
                  email: _formData['email'].toString(),
                  avatarURL: _formData['avatarURL'].toString(),
                ));
              }
              Navigator.of(context).pop();
            },
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Form(
            key: _form,
            child: Column(children: <Widget>[
              TextFormField(
                initialValue: _formData['name'],
                decoration: InputDecoration(labelText: 'Nome:'),
                onSaved: (value) => _formData['nome'] = value!,
              ),
              TextFormField(
                  initialValue: _formData['email'],
                  decoration: InputDecoration(labelText: 'Email:'),
                  onSaved: (value) => _formData['email'] = value!),
              TextFormField(
                  initialValue: _formData['avatarURL'],
                  decoration: InputDecoration(labelText: 'Url do avatar:'),
                  onSaved: (value) => _formData['avatarURL'] = value!),
            ])),
      ),
    );
  }
}
