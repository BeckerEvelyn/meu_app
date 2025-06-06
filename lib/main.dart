import 'dart:io';

import 'package:flutter/material.dart';
import 'package:meu_app/MaterialWidget/App.dart';
import 'package:meu_app/MaterialWidget/MyMaterial.dart';
import 'package:meu_app/WidgetsLayout/Debug.dart';
import 'package:meu_app/WidgetsLayout/LayoutApp.dart';
import 'package:meu_app/cupertino/MyCupertino.dart';
import 'package:meu_app/inherited/UserData.dart';
import 'package:meu_app/inherited/UserInfos.dart';
import 'package:meu_app/navega%C3%A7%C3%A3o/Routes.dart';
import 'package:meu_app/stateful/Contador.dart';
import 'package:meu_app/stateful/DarkMode.dart';
import 'package:meu_app/stateful/RandomNumber.dart';
import 'package:meu_app/stateful/exercicio.dart';
import 'package:meu_app/stateless/Bot%C3%A3o.dart';
import 'package:meu_app/stateless/User.dart';
import 'package:meu_app/stateless/semEstado.dart';
import 'package:meu_app/usandoAssets/Fonts.dart';
import 'package:meu_app/usandoAssets/Imagem.dart';

/* void main() {
  runApp(Container(
    child: Text(
      "Bem vindo ao Flutter", 
      textDirection: TextDirection.ltr,
      style: TextStyle(color: Colors.purple, fontSize: 30.0)
    ),
  ));
} */

/**
 * NO FLUTTER TEMOS 3 TIPOS DE ESTADOSDE APLICAÇÃO
 * STATELESS (ESTADO IMUTÁVEL)
 * A UI NUNCA MUDA APÓS SER CONSTRUÍDA
 * É USADO PARA COMPONENTES ESTÁTICOS COMO ÍCONES, TEXTOS FIXOS E ESTC
 * 
 * STATEFUL (ESTADO LOCAL)
 * A UI MUDA QUANDO O ESTADO INTERNO MUDA
 * É USADO EM WIDGETS QUE TEM INTERAÇÃO COM O USUÁRIO, COM ENTRADAS
 * DE TEXTOS, CARREGAMENTO DE DADOS, ANIMAÇÕES E ETC
 * 
 * INHERITED (ESTADO HERDADO)
 * COMPARTILHA DADOS DESCENTES NA ÁRVORE DE WIDGETS 
 * ÚTIL PARA DADOS GLOBAIS LEVES COM TEMAS, IDIOMAS E ETC
 */

void main(List<String> args) {
 // runApp(SemEstado());
 /* runApp(MaterialApp(
  home: Center(
    child: Botao(),
  ),
 )); */

 // runApp(User());

/*  runApp(MaterialApp(
  home: Contador(),
 )); */

 // runApp(DarkMode());
 //runApp(RandomNumber());

// runApp(Userinfos());

// runApp(Loja());

// runApp(Mymaterial());
// runApp(MayApp());
 
// runApp(ExercicioMaterialApp());
// runApp(MyCupertino());

// coo decidir qual widget usar?

/* if(Platform.isAndroid){
  runApp(Mymaterial());
}else{
  runApp(MyCupertino());
} */

// runApp(LayoutApp());
// runApp(Imagem());

// runApp(const MaterialApp(home: Debug(numeroMaximo: 10),));

// NAVEGANDO EM TELAS
runApp(Routes());


}