import 'dart:io';

calculoIdade() {
  print('Insira a sua idade:');
  String input = stdin.readLineSync().toString();
  int idade = int.parse(input);

  if (idade >= 50) {
    print('Melhor idade');
  } else if (idade >= 18 && idade < 50) {
    print('Adulto(a)');
  } else if (idade >= 12 && idade < 18) {
    print('Adolescente');
  } else if (idade >= 0 && idade < 12) {
    print('Criança');
  } else {
    print('Idade inválida');
  }
}
