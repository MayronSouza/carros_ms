import 'package:carros_ms/components/botao.dart';
import 'package:carros_ms/components/formulario.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Carros',
        ),
      ),
      body: _body(),
    );
  }

  _body() {
    final TextEditingController _loginController = TextEditingController();
    final TextEditingController _senhaController = TextEditingController();

    return Container(
      padding: EdgeInsets.all(16.0),
      child: ListView(
        children: <Widget>[
          Formulario(
            'Login',
            'Digite o login...',
            controller: _loginController,
          ),
          SizedBox(
            height: 8.0,
          ),
          Formulario(
            'Senha',
            'Digite a senha...',
            password: true,
            controller: _senhaController,
          ),
          SizedBox(
            height: 16.0,
          ),
          Container(
            height: 48.0,
            child: Botao('Login', () {
              print('Login => ${_loginController.text}');
              print('Senha => ${_senhaController.text}');
            }),
          ),
        ],
      ),
    );
  }
}
