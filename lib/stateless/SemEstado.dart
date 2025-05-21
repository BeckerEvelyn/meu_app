import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SemEstado extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Entra 21 flutter",
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.purpleAccent, fontSize: 20),
        ),
      ),
    );
    
  }

}