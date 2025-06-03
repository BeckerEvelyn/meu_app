import 'package:flutter/material.dart';
import 'package:meu_app/navega%C3%A7%C3%A3o/Tela2.dart';

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tela 1"),),
      body: Center(
        child: ElevatedButton(
          child: const Text("Ir para tela 2"),
          onPressed: (){
           /*  Navigator.push(context, MaterialPageRoute(
              builder: (context) => const Tela2()
              )); */
              Navigator.pushNamed(context, '/tela2');
          } 
      ),
      ),
    );
  }
}