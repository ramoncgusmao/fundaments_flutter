

import 'package:bytebank/components/Editor.dart';
import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/material.dart';

class FormularioTransferencia extends StatelessWidget {
  final TextEditingController _controladorCampoNumeroConta =
  TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  void criaTransferencia(BuildContext context) {
    final int? numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
    final double? valor = double.tryParse(_controladorCampoValor.text);
    if( numeroConta != null && valor != null){
      final transferenciaCriada = Transferencia(valor, numeroConta);
      debugPrint('$transferenciaCriada');
      Navigator.pop(context, transferenciaCriada);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Criando Transferencia')),
      body: Column(
        children: <Widget>[
          Editor(
              controlador : _controladorCampoNumeroConta,
              rotulo: 'Número da Conta',
              dica: '0000'),
          Editor(
              controlador: _controladorCampoValor,
              rotulo: 'Valor',
              dica: '0.00',
              icon: Icons.monetization_on),
          ElevatedButton(onPressed: () => criaTransferencia(context), child: const Text('Confirmar')),
        ],
      ),
    );
  }
}
