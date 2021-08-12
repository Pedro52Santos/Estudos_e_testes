import 'dart:io';

//Apenas um teste de entrada e saída de dados...
main() {
  print('Insira um valor: ');
  var altura = stdin.readLineSync();
  int alturaX = int.parse(altura.toString());
  alturaX += 3;
  print('O valor ${altura} mais 3 é ${alturaX}');
}
