import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mymaterial extends StatelessWidget {
  const Mymaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Título do App",
      debugShowCheckedModeBanner: false,
      home: Tela(),
    );
  }
}

class Tela extends StatefulWidget {
  const Tela({super.key});

  @override
  State<
  Tela> createState() => _TelaState();
}

class _TelaState extends State<Tela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App Bar")),
      body: Text("Corpo do aplicativo"),
      backgroundColor: Colors.purpleAccent,
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Menu", 
            style: GoogleFonts.comicNeue(
            fontSize: 20,
            fontWeight: FontWeight.w500
            ),
              ),),
            ListTile(title: Text("Home"),),
            ListTile(title: Text("Produtos"),),
            ListTile(title: Text("Serviços"),),
            ListTile(title: Text("Contato"),),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          
        },
        child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Padding(padding: EdgeInsets.all(16), child: Text("Rodapé"),),
        ),
    );
  }
}

