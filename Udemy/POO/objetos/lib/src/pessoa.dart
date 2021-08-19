import 'package:objetos/src/humano.dart';

//EXTENDS é a palavra chave da herança.
class Pessoa extends Humano {
  // para uma variável ser privada basta inserir o underline antes _
  String _nomeLocal = '';
  // o acressimo da palavra chave final antes de declarar uma variável torna a mesma estática.
  final String teste = '';
  Pessoa(String nome, int idade, String sexo) {
    this.nome = nome;
    this.idade = idade;
    this.sexo = sexo;
  }
}
