import 'package:bytebank/Compenents/Editor.dart';
import 'package:bytebank/Models/Transferencia.dart';
import 'package:flutter/material.dart';
import '../../main.dart';

class FormularioTransferencia extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();

  final TextEditingController _ControladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criando Transferência '),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Editor(
              controller: _ControladorCampoValor,
              dica: '0000',
              rotulo: 'Número da conta',
            ),
            Editor(
              controller: _controladorCampoNumeroConta,
              dica: '0.00',
              rotulo: 'Valor',
              icone: Icons.monetization_on,
            ),
            ElevatedButton(
              onPressed: () => _criaTransferencia(context),
              child: Text('confirmar'),
            ),
          ],
        ),
      ),
    );
  }

  void _criaTransferencia(BuildContext context) {
    final int numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
    final double valor = double.tryParse(_ControladorCampoValor.text);
    if (numeroConta != null && valor != null) {
      final tranferenciaCriada = Tranferencia(valor, numeroConta);
      debugPrint('Criando Tranferência');
      debugPrint('$tranferenciaCriada');
      Navigator.pop(context, tranferenciaCriada);
    }
  }
}
