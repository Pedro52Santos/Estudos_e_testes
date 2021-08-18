import 'src/calculoIdade.dart';

//é possível usar os argumentos(args) para definir o que o main.dart irá executar
main(List<String> args) {
  if (args[0] == 'calculo-idade') {
    calculoIdade();
  }
}
