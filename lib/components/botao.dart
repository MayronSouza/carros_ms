import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final String titulo;
  final Color corTitulo;
  final Function onPressed;
  bool showProgress;

  Botao(
    this.titulo,
    this.onPressed, {
    this.showProgress = false,
    this.corTitulo = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: showProgress
          ? Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  Colors.white,
                ),
              ),
            )
          : Text(
              titulo,
              style: TextStyle(
                color: corTitulo,
                fontSize: 24.0,
              ),
            ),
      color: Colors.blue,
      onPressed: onPressed,
    );
  }
}
