import 'package:flutter/material.dart';

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
void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: Column(
            children:<Widget>[
              Card(
                child: ListTile(
                  leading: Icon(Icons.monetization_on,),
                  title: Text('100.0'),
                  subtitle: Text('100000'),
                )
              ),
              Card(
                  child: ListTile(
                    leading: Icon(Icos.monetization_on,),
                    title: Text('200.0'),
                    subtitle: Text('100000'),
                  )
              ),
            ],
          ),
          appBar: AppBar(
            title: Text(' Transferências'),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
//====================  AULA 2 CURSO DE FLUTTER INICIO DA APLICAÇÃO =====================================================================================================