import 'package:flutter/material.dart';

class Loja extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      home: LojaSatatusPage(
      ),
    );
  }

}

class LojaSatatusPage extends StatefulWidget {
  const LojaSatatusPage({super.key});

  @override
  State<LojaSatatusPage> createState() => _LojaSatatusPageState();
}

class _LojaSatatusPageState extends State<LojaSatatusPage> {
  bool _aberto = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Status da Loja"),),
      body: Column(
        children: [
          SwitchListTile(
            title: const Text("Loja Aberta"),
            subtitle: const Text("alterne entre aberto/fechado"),
            value: _aberto,
            onChanged: (bool value){
              setState(() {
                _aberto = value;
              });
            },
            secondary: const Icon(Icons.store),
          ),
          const SizedBox(height: 20,),
          Text(_aberto ? "A loja está aberta" : "A loja está fechada", 
          style: TextStyle(fontSize: 14, 
          color: _aberto ?  Colors.green : Colors.red
          ),)
        ],
      ),
    );
    
  }
}