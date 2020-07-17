import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
  final String label;
  final String hint;
  final bool password;
  final TextEditingController controller;

  const CampoTexto(this.label, this.hint,
      {this.password = false, this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
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
