import 'dart:convert';
import 'package:carros_ms/pages/usuario.dart';
import 'package:http/http.dart' as http;

class LoginApi {
  static Future<Usuario> login(String login, String senha) async {
    var url = 'https://carros-springboot.herokuapp.com/api/v2/login';

    Map params = {
      'username': login,
      'password': senha,
    };

    Map<String, String> headers = {"Content-Type": "application/json"};

    String s = json.encode(params);

    var response = await http.post(
      url,
      body: s,
      headers: headers,
    );

    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    Map mapResponse = json.decode(response.body);

    final user = Usuario.fromJson(mapResponse);

    return user;
  }
}
