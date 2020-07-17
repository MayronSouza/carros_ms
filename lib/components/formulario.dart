import 'package:flutter/material.dart';

class Formulario extends StatelessWidget {
  final String label;
  final String hint;
  final bool password;

  const Formulario(this.label, this.hint, {this.password = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: password,
      style: TextStyle(
        fontSize: 24.0,
        color: Colors.blue,
      ),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: Colors.grey,
          fontSize: 24.0,
        ),
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 16.0,
        ),
      ),
    );
  }
}
