import 'package:bytebank/screens/transferencia/lista.dart';
import 'package:flutter/material.dart';

void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.green,
        ).copyWith(
          secondary:  Colors.blueAccent[700],
        ),
      elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent[700],
              )),
        ),
      home: Scaffold(
        body: ListaTransferencias(),
      ),
    );
  }
}

