main() {
  mensagem(string) {
    for (int i = 0; i < 20; i++) {
      print(string);
    }
  }

  mensagem('pedro');
  bool condicao = true;
  int x = 1;
  while (condicao) {
    print('Rodou ${x} vezes...');
    if (x > 9) {
      condicao = false;
    } else {
      x++;
    }
  }
}
