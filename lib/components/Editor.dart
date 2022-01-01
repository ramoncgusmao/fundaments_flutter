import 'package:flutter/material.dart';

class Editor  extends StatelessWidget {

  final TextEditingController controlador;
  final String rotulo;
  final String dica;
  final IconData? icon;

  Editor({required this.controlador, required this.rotulo, required this.dica, this.icon});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: TextField(
        controller: controlador,
        decoration: InputDecoration(
          icon: icon != null ? Icon(icon) : null,
          labelText: rotulo,
          hintText: dica,
        ),
        style: TextStyle(
          fontSize: 24.0,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}

