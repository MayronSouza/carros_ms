import 'package:carros_ms/components/botao.dart';
import 'package:carros_ms/components/campo_texto.dart';
import 'package:flutter/material.dart';

class Formulario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _loginController = TextEditingController();
    final TextEditingController _senhaController = TextEditingController();

    return Form(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            CampoTexto(
              'Login',
              'Digite o login...',
              controller: _loginController,
            ),
            SizedBox(
              height: 8.0,
            ),
            CampoTexto(
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
      ),
    );
  }
}
