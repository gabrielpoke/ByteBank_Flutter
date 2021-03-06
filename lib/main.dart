import 'package:flutter/material.dart';
import 'Screens/Tranferencia/Lista.dart';

//====================  EXERCICIO 1 CURSO DE FLUTTER ARVORE DE WIDGETS =====================================================================================================
// void main() => runApp(
//       Column(
//         children: <Widget>[
//           Text(
//             ' Text 1 ',
//             textDirection: TextDirection.ltr,
//           ),
//           Text(
//             ' Text 2 ',
//             textDirection: TextDirection.ltr,
//           ),
//           Text(
//             'Text 3 ',
//             textDirection: TextDirection.ltr,
//           ),
//           Expanded(
//             child: FittedBox(
//               fit: BoxFit.contain, // otherwise the logo will be tiny
//               child: const FlutterLogo(),
//             ),
//           ),
//           Column(
//             children: <Widget>[
//               Text(
//                 ' Text 4 ',
//                 textDirection: TextDirection.ltr,
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//====================  EXERCICIO 1 CURSO DE FLUTTER ARVORE DE WIDGETS =====================================================================================================

//====================  AULA 2 CURSO DE FLUTTER INICIO DA APLICAÇÃO  =====================================================================================================
// void main() => runApp(
//       MaterialApp(
//         home: Scaffold(
//           body: Column(
//             children: <Widget>[
//               Card(
//                   child: ListTile(
//                 leading: Icon(
//                   Icons.monetization_on,
//                 ),
//                 title: Text('100.0'),
//                 subtitle: Text('100000'),
//               )),
//               Card(
//                   child: ListTile(
//                 leading: Icon(
//                   Icons.monetization_on,
//                 ),
//                 title: Text('200.0'),
//                 subtitle: Text('100000'),
//               )),
//             ],
//           ),
//           appBar: AppBar(
//             title: Text(' Transferências'),
//           ),
//           floatingActionButton: FloatingActionButton(
//             child: Icon(Icons.add),
//           ),
//         ),
//       ),
//     );
//====================  AULA 2 CURSO DE FLUTTER INICIO DA APLICAÇÃO =====================================================================================================

//====================  AULA 3 CURSO DE FLUTTER OTIMIZAÇÃO DA APLICAÇÃO =====================================================================================================
// void main() => runApp(
//   MaterialApp(
//     home: Scaffold(
//       body: listaTransferencia(),
//       appBar: AppBar(
//         title: Text(' Transferências'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//       ),
//     ),
//   ),
// );
//
// class listaTransferencia extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         ItemTransferencia(
//           Tranferencia(100.0, 1000),
//         ),
//         ItemTransferencia(
//           Tranferencia(200.0, 1001),
//         ),
//         ItemTransferencia(
//           Tranferencia(300.0, 1002),
//         ),
//       ],
//     );
//   }
// }
//
// class ItemTransferencia extends StatelessWidget {
//   final Tranferencia _tranferencia;
//
//   ItemTransferencia(this._tranferencia);
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//         child: ListTile(
//       leading: Icon(
//         Icons.monetization_on,
//       ),
//       title: Text(_tranferencia.valor.toString()),
//       subtitle: Text(_tranferencia.numeroConta.toString()),
//     ));
//   }
// }
//
// class Tranferencia{
//
//   final double valor;
//   final int numeroConta;
//
//   Tranferencia(this.valor, this.numeroConta);
// }
//====================  AULA 3 CURSO DE FLUTTER OTIMIZAÇÃO DA APLICAÇÃO =====================================================================================================

//====================  AULA 4 CURSO DE FLUTTER CRIAÇÃO DO FORMULARIO =====================================================================================================
// void main() => runApp(BytebankApp());
//
// class BytebankApp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//
//
//     return MaterialApp(
//       home: Scaffold(
//         body: FormularioTransferencia(),
//       ),
//     );
//   }
//
// }
//
// class FormularioTransferencia extends StatelessWidget {
//
//   final TextEditingController _controladorCampoNumeroConta =
//       TextEditingController();
//
//   final TextEditingController _ControladorCampoValor = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Criando Transferência '),
//       ),
//       body: Column(
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: TextField(
//               controller: _controladorCampoNumeroConta,
//               style: TextStyle(fontSize: 24.0),
//               decoration: InputDecoration(labelText: 'Valor', hintText: '0000'),
//               keyboardType: TextInputType.number,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: TextField(
//
//               controller: _ControladorCampoValor,
//               style: TextStyle(fontSize: 24.0),
//               decoration: InputDecoration(
//                   icon: Icon(Icons.monetization_on),
//                   labelText: 'Valor',
//                   hintText: '0.00'),
//               keyboardType: TextInputType.number,
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//
//               final int numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
//               final double valor = double.tryParse(_ControladorCampoValor.text);
//
//               if(numeroConta != null && valor != null){
//                final  tranferenciaCriada = Tranferencia(valor, numeroConta);
//                debugPrint('$tranferenciaCriada');
//               }
//               },
//             child: Text('confirmar'),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class listaTransferencia extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(' Transferências'),
//       ),
//       body: Column(
//         children: <Widget>[
//           ItemTransferencia(
//             Tranferencia(100.0, 1000),
//           ),
//           ItemTransferencia(
//             Tranferencia(200.0, 1001),
//           ),
//           ItemTransferencia(
//             Tranferencia(300.0, 1002),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
//
// class ItemTransferencia extends StatelessWidget {
//   final Tranferencia _tranferencia;
//
//   ItemTransferencia(this._tranferencia);
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//         child: ListTile(
//           leading: Icon(
//             Icons.monetization_on,
//           ),
//           title: Text(_tranferencia.valor.toString()),
//           subtitle: Text(_tranferencia.numeroConta.toString()),
//         ));
//   }
// }
//
// class Tranferencia{
//
//   final double valor;
//   final int numeroConta;
//
//   Tranferencia(this.valor, this.numeroConta);
//
//   @override
//   String toString() {
//     return 'Tranferencia{valor: $valor, numeroConta: $numeroConta}';
//   }
// }
//====================  AULA 4 CURSO DE FLUTTER CRIAÇÃO DO FORMULARIO =====================================================================================================

//====================  AULA 5 EXTRAINDO WIDGETS FLEXÍVEIS =====================================================================================================
void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: listaTransferencia(),
    );
  }
}

//====================  AULA 5 EXTRAINDO WIDGETS FLEXÍVEIS =====================================================================================================
