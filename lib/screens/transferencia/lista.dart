import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/material.dart';

import 'formulario.dart';

class ListaTransferencias extends StatefulWidget {

  final List<Transferencia> _transferencias = [];

  @override
  State<StatefulWidget> createState() {
    return ListaTransferenciaState();
  }
}



class ListaTransferenciaState extends State<ListaTransferencias>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: widget._transferencias.length,
        itemBuilder: (context, indice) {
          final transferencia = widget._transferencias[indice];
          return ItemTransferencia(transferencia);
        },
      ),
      appBar: AppBar(
        title: Text('Transferências'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioTransferencia();
          }),
          ).then((transferencia) => _atualizar(transferencia));
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _atualizar(Transferencia? transferenciaRecebida) {
    if(transferenciaRecebida != null){
      setState(() {
        widget._transferencias.add(transferenciaRecebida);
      });
      debugPrint('${widget._transferencias.length}');
    }
  }

}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      ),
    );
  }
}
