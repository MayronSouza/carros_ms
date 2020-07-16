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
    return Container(
      padding: EdgeInsets.all(16.0),
      child: ListView(
        children: <Widget>[
          TextFormField(
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.blue,
            ),
            decoration: InputDecoration(
              labelText: 'Login',
              labelStyle: TextStyle(
                color: Colors.grey,
                fontSize: 24.0,
              ),
              hintText: 'Digite o login...',
              hintStyle: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          TextFormField(
            obscureText: true,
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.blue,
            ),
            decoration: InputDecoration(
              labelText: 'Senha',
              labelStyle: TextStyle(
                color: Colors.grey,
                fontSize: 24.0,
              ),
              hintText: 'Digite a senha...',
              hintStyle: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          Container(
            height: 48.0,
            child: RaisedButton(
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
              color: Colors.blue,
              onPressed: () {
                print('Você logou!!!');
              },
            ),
          ),
        ],
      ),
    );
  }
}
