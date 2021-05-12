import 'package:flutter/material.dart';

void main() => runApp(
      Column(
        children: <Widget>[
          Text(
            'Primeira aula',
            textDirection: TextDirection.ltr,
          ),
          Text(
            'Exemplo',
            textDirection: TextDirection.ltr,
          ),
          Column(
            children: <Widget>[
              Text(
                'Estou aqui',
                textDirection: TextDirection.ltr,
              ),
            ],
          ),
          Expanded(
            child: FittedBox(
              fit: BoxFit.contain,
              child: const FlutterLogo(),
            ),
          ),
        ],
      ),
    );
