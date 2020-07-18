import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
  final String label;
  final String hint;
  final bool password;
  final TextEditingController controller;
  final FormFieldValidator<String> validated;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;

  const CampoTexto(
    this.label,
    this.hint, {
    this.password = false,
    this.controller,
    this.validated,
    this.keyboardType,
    this.textInputAction,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validated,
      controller: controller,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      obscureText: password,
      style: TextStyle(
        fontSize: 24.0,
        color: Colors.blue,
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
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
