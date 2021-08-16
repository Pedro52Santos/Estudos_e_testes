import 'dart:io';

Map<String, dynamic> cadastro = {};
main() {
  bool condicao = true;
  while (condicao) {
    String comando = stdin.readLineSync().toString();
    if (comando == 'sair') {
      condicao = false;
    } else if (comando == 'cadastro') {
      cadastrar();
    } else if (comando == 'imprimir') {
      print(cadastro);
    } else {
      print("Comando inválido!!!");
    }
  }
}

cadastrar() {
  print("Digite o seu nome:");
  cadastro['nome'] = stdin.readLineSync().toString();

  print('insira sua idade:');
  cadastro['idade'] = stdin.readLineSync().toString();

  print('insira a sua cidade: ');
  cadastro['cidade'] = stdin.readLineSync().toString();

  print('insira seu estado:');
  cadastro['estado'] = stdin.readLineSync().toString();
}
