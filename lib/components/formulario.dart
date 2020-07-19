import 'package:carros_ms/components/botao.dart';
import 'package:carros_ms/components/campo_texto.dart';
import 'package:carros_ms/pages/api_response.dart';
import 'package:carros_ms/pages/home_page.dart';
import 'package:carros_ms/pages/login_api.dart';
import 'package:carros_ms/pages/usuario.dart';
import 'package:carros_ms/utils/alert.dart';
import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  @override
  _FormularioState createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _showProgress = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            CampoTexto(
              'Login',
              'Digite o login...',
              controller: _loginController,
              validated: _validateLogin,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
            ),
            SizedBox(
              height: 8.0,
            ),
            CampoTexto(
              'Senha',
              'Digite a senha...',
              password: true,
              controller: _senhaController,
              validated: _validateSenha,
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 16.0,
            ),
            Container(
              height: 48.0,
              child: Botao(
                'Login',
                _onPressLoginValidated,
                showProgress: _showProgress,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _validateLogin(String texto) {
    if (texto.isEmpty) {
      return 'Digite o Login';
    } else {
      return null;
    }
  }

  String _validateSenha(String texto) {
    if (texto.isEmpty) {
      return 'Digite a Senha';
    } else if (texto.length < 3) {
      return 'A senha precisar ter pelo menos 3 caracteres';
    } else {
      return null;
    }
  }

  _onPressLoginValidated() async {
    bool formOk = _formKey.currentState.validate();
    if (!formOk) {
      return;
    }

    String login = _loginController.text;
    String senha = _senhaController.text;

    ApiResponse response = await LoginApi.login(login, senha);

    if (response.ok) {
      Usuario user = response.result;

      print('>>> $user');

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return HomePage();
        }),
      );
    } else {
      alert(context, response.msg);
    }

    print('Login => $login');
    print('Senha => $senha');
  }
}
