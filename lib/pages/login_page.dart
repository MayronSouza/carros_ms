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
      body: Formulario(),
    );
  }
}
