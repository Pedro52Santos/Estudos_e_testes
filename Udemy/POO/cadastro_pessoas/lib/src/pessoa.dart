import 'dart:html';

import 'dart:js';

class Pessoa {
  String nome = '';
  int idade = 0;
  double altura = 0;
  double peso = 0;

  double imc() => peso / (altura * altura);

  bool maioridade() => idade >= 18;
}
