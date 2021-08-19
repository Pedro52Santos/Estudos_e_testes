import 'src/pessoa.dart';
import 'src/pessoasInteligente.dart';

void main(List<String> arguments) {
  var pessoa = Pessoa('nome', 32, 'm');
  print(pessoa.nome);

  var pessoaI = PessoaI(idade: 20, nome: 'Pedro', sexo: 'm');
  print(pessoaI.nome);
}
