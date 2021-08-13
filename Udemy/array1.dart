import 'dart:io';

main(List<String> args) {
  bool condicao = true;
  var nomes = [];
  while (condicao) {
    print('Insira um nome:');
    String text = stdin.readLineSync().toString();
    if (text == 'sair') {
      print('#########Programa finalizado##########');
      condicao = false;
    } else {
      nomes.add(text);
    }
  }
  print(nomes);
}
