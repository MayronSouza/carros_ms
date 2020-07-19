class Usuario {
  String login;
  String nome;
  String email;
  String urlFoto;
  String token;
  List<String> roles;

  Usuario.fromJson(Map<String, dynamic> map)
      : this.login = map['login'],
        this.nome = map['nome'],
        this.email = map['email'],
        this.urlFoto = map['urlFoto'],
        this.token = map['token'];

  @override
  String toString() {
    return 'Usuario(login: $login, nome: $nome, email: $email, urlFoto: $urlFoto, token: $token, roles: $roles)';
  }
}
