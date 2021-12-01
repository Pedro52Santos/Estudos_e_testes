class User {
  final String id;
  final String name;
  final String email;
  final String avatarURL;

  const User({
    this.id = '', //Se der erro voltar aqui para testes.
    required this.name,
    required this.email,
    required this.avatarURL,
  });
}
