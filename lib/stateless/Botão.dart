import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Container(
      child: SizedBox(
        width: 200,
        height: 50,
        child: ElevatedButton(
          onPressed: (){}, 
          child: Center(
          child: Text(
            "Botão",
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.deepPurple, fontSize: 20),
          ),
        )),
      ),
    );
  }
}