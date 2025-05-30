import 'package:flutter/material.dart';
import 'package:meu_app/WidgetsLayout/Box.dart';

/**
 * WIDGET COLUMN
 * é um widget usado para dispor widgets filhos verticalmente, um embaixo do outro,
 * ddentro de um único eixo (o eixo veertical Y)
 * 
 * propriedades peincipais
 * children              -> uma lista de widgets empilhados verticalmente
 * mainAxisAlignment     -> alinha os filhos no eixo vertical
 * crossAxisaliAlignment -> alinha os filhos no eixo cruzado (horizontal)
 * mainAxisSize          -> controla se a colunm ocupa todo o espaço ou apenas o necessário
 * textBiseLine          -> necessário para o alinhamento de texto com crosAxisalignment.
 * baseline
 */


class Widgetcolumn extends StatelessWidget {
  const Widgetcolumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Column(
       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        /* children: [
          Text("Text 1"),
          Text("Text 2"),
          Container(
            width: 50,
            height: 50,
            color: Colors.lightBlue,
          )
        ], */
        children: [
          Box(text: "Box 1", backgroundColor: Colors.indigo),
          Box(text: "Box 2", backgroundColor: Colors.indigoAccent),
          Box(text: "Box 3", backgroundColor: Colors.lightBlue),
      
        ],
      ),
    );
  }
}