import 'package:bytebank/Compenents/Editor.dart';
import 'package:bytebank/Models/Transferencia.dart';
import 'package:flutter/material.dart';



const _tituloAppBar = 'Criando Transferência ';

const _rotuloCampoValor = 'Valor';
const _dicaCampoValor = '0.00';

const _rotuloCampoNumeroConta = 'Número da conta';
const _dicaCampoNumeroConta = '0000';

const _textoBotaoConfirmar = 'Confirmar';

class FormularioTransferencia extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();

  // ignore: non_constant_identifier_names
  final TextEditingController _ControladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Editor(
              controller: _ControladorCampoValor,
              dica: _dicaCampoNumeroConta,
              rotulo:_rotuloCampoNumeroConta,
            ),
            Editor(
              controller: _controladorCampoNumeroConta,
              dica: _dicaCampoValor,
              rotulo: _rotuloCampoValor,
              icone: Icons.monetization_on,
            ),
            ElevatedButton(
              onPressed: () => _criaTransferencia(context),
              child: Text(_textoBotaoConfirmar),
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
