import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MayApp extends StatelessWidget {
  const MayApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "App do exercício",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cinemax")),
      body: Text("Seja bem Vindo(a)"),
      backgroundColor: const Color.fromARGB(255, 187, 160, 110),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Menu",
            style: GoogleFonts.vibes(
              fontSize: 20
            ),
            ),),
            ListTile(title: Text("Filmes"),),
            ListTile(title: Text("Séries"),),
            ListTile(title: Text("Doramas"),),
            ListTile(title: Text("Anime"),),
            ListTile(title: Text("Home"),),
          ],
        ),
      ),
    );
  }
}

