import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final String titulo;
  final Function funcao;
  final Color corTitulo;

  Botao(this.titulo, this.funcao, {this.corTitulo = Colors.white});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        titulo,
        style: TextStyle(
          color: corTitulo,
          fontSize: 24.0,
        ),
      ),
      color: Colors.blue,
      onPressed: funcao,
    );
  }
}
