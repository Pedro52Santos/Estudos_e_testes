main() {
  var whatever = 'true';
  //Var significa que ela não tem tipo até receber um valor qualquer.

  //As funções, como em todas as linguagens....mas ela se parece mais com javascript quando referente a semântica
  mandaEstudar() {
    print("Vai estudar bixo!!!");
  }

  //O tipo map que se parece com uma lista(mas nem tanto).
  //Funciona como uma lista, porém no lugar do index há uma "chave" que é definida previamente.
  //Observe que antes dos pontos localiza-se o identificador, e após localiza-se o valor que ele tem no local
  var nome_sobrenome = {
    'Caio': 'Rolla',
    'Aylan': 'Boscarino',
    'Estêvão': 'Dias',
  };
  // Assim, ao efetuar o comando print(nome_sobrenome['Caio']) o resultado seria 'Rolla' que é o valor correspondente ao identificador Caio

  // O tipo dynamic talvez seja, para mim, o tipo mais curioso... nele, assim como lê-se a variável é dinâmica e aceita todos tipos
  dynamic variavelMetamorfa = "texto";

  //O tipo List(Lista) pode ser declarado de varias formas, parecem-se bastante com as listas de JavaScript, porém cada uma delas tem função e uso diferente.
  //No dart a lista é genérica, por isso quando declaradas sem valor ficam "riscadas".
  List lista = List();
  var lista1 = List();
  var lista2 = new List();
  //vale ressaltar que por padrão elas recebem todo tipo de valor
  var listaLiteral = [1, 2, 3, "lalala", true];

  //abaixo ficam alguns tipos comuns de variáveis:
  //Inteiro
  int numeroInteiro = 2;
  //Real
  double numeroReal = 2.3;
  // Variáveis do tipo texto, tanto aspas duplas quanto aspas simples podem ser aceitas
  String textoQualquer = "Sei la mano";
}

//Em caso de dúvidas, ler o artigo da Udemy novamente.
//https://www.devmedia.com.br/sintaxe-dart-tipos-nao-tao-primitivos/40368