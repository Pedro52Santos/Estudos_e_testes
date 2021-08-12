import 'dart:io';

main() {
  bool condicao = true;
  while (condicao) {
    print('Se quiser sair escreva "sair"');
    String text = stdin.readLineSync();
    if (text == 'sair') {
      condicao = false;
    }
  }
}
