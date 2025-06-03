import 'package:flutter/material.dart';
import 'package:meu_app/navega%C3%A7%C3%A3o/Tela1.dart';
import 'package:meu_app/navega%C3%A7%C3%A3o/Tela2.dart';
import 'package:meu_app/navega%C3%A7%C3%A3o/Tela3.dart';

class Routes extends StatelessWidget {
  const Routes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => const Tela1(),
        '/tela2' : (context) => const Tela2(),
        '/tela3' : (context) => const Tela3()
      },
    );
  }
}