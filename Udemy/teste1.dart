import 'dart:io';

main() {
  var altura = stdin.readLineSync();
  int alturaX = int.parse(altura.toString());
  alturaX += 3;
  print(alturaX);
}
