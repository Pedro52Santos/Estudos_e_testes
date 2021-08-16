import 'dart:io';

import 'criandocomandos.dart';

//trata-se de uma lista de variaveis do tipo Map.
List<Map<String, dynamic>> cadastros = [];
main() {
  bool condicao = true;
  while (condicao) {
    print('Insira um comando:');
    String comando = stdin.readLineSync().toString();
    if (comando == 'sair') {
      print('programa finalizado');
      condicao = false;
    } else if (comando == 'cadastrar') {
      cadastrar();
    } else if (comando == 'imprimir todos') {
      print(cadastros);
    } else {
      print('comando inválido');
    }
  }
}

cadastrar() {
  Map<String, dynamic> cadastro = {};

  print("Digite o seu nome:");
  cadastro['nome'] = stdin.readLineSync().toString();

  print('insira sua idade:');
  cadastro['idade'] = stdin.readLineSync().toString();

  print('insira a sua cidade: ');
  cadastro['cidade'] = stdin.readLineSync().toString();

  print('insira seu estado:');
  cadastro['estado'] = stdin.readLineSync().toString();
  cadastros.add(cadastro);
}
