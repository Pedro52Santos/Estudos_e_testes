import 'dart:io';

import 'package:cadastro_pessoas/src/pessoa.dart';

Pessoa pessoa = Pessoa();
main(List<String> args) {
  print('escreva seu nome:');
  pessoa.nome = stdin.readLineSync().toString();
  print('Insira sua idade:');
  pessoa.idade = int.parse(stdin.readLineSync().toString());
  print('Insira sua altura:');
  pessoa.altura = double.parse(stdin.readLineSync().toString());
  print('Insira seu peso');
  pessoa.peso = double.parse(stdin.readLineSync().toString());
}
