import 'package:flutter/material.dart';

//====================  EXERCICIO 1 CURSO DE FLUTTER ARVORE DE WIDGETS =====================================================================================================
void main() => runApp(
      Column(
        children: <Widget>[
          Text(
            ' Text 1 ',
            textDirection: TextDirection.ltr,
          ),
          Text(
            ' Text 2 ',
            textDirection: TextDirection.ltr,
          ),
          Text(
            'Text 3 ',
            textDirection: TextDirection.ltr,
          ),
          Expanded(
            child: FittedBox(
              fit: BoxFit.contain, // otherwise the logo will be tiny
              child: const FlutterLogo(),
            ),
          ),
          Column(
            children: <Widget>[
              Text(
                ' Text 4 ',
                textDirection: TextDirection.ltr,
              ),
            ],
          )
        ],
      ),
    );
//====================  EXERCICIO 1 CURSO DE FLUTTER ARVORE DE WIDGETS =====================================================================================================



// void main() => runApp(
//       Column(
//         children: <Widget>[
//           Text(
//             'Primeira aula',
//             textDirection: TextDirection.ltr,
//           ),
//           Text(
//             'Exemplo',
//             textDirection: TextDirection.ltr,
//           ),
//           Column(
//             children: <Widget>[
//               Text(
//                 'Estou aqui',
//                 textDirection: TextDirection.ltr,
//               ),
//             ],
//           ),
//           Expanded(
//             child: FittedBox(
//               fit: BoxFit.contain,
//               child: const FlutterLogo(),
//             ),
//           ),
//         ],
//       ),
//     );
