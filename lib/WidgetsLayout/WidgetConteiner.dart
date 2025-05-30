import 'package:flutter/material.dart';

/**
 * Widget container é um bloco de construção visual que permite controlar 
 * layout, espaçamento, cor, bordas, tranformação e muito mais.
 * 
 * FUNÇÕES DO CONTAINER:
 * 
 * width / heigth -> largura e altura fixas
 * padding        -> espaço interno (preenchimento) dentro do container
 * margin         -> espaço externo (fora do container)
 * color          -> cor de fundo do container
 * alignment      -> alinha o elemento finlho dentro do container
 * decoration     -> estilo visual completo (cores, bordas, sombreamento e etc)
 * child          -> o conteúdo do container (filho)
 * constrains     -> limita dimensões (mínimo e máximo)
 * tranform       -> aplica rotação, escala, tranformação e etc
 */

class Widgetconteiner extends StatelessWidget {
  const Widgetconteiner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: EdgeInsets.all(16),
      color: Colors.red,
      alignment: Alignment.center,
      // child: Text("Container", style: TextStyle(fontSize: 35),),
      child: Container(
        width: 50,
        height: 50,
        color: Colors.green,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            
            width: 4
          ),
          borderRadius: BorderRadius.circular(12)
        ),
      ),
    );
  }
}