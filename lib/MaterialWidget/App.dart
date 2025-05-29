import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
/* class MayApp extends StatelessWidget {
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
      body: Column(
         mainAxisAlignment: MainAxisAlignment.end,
         children: [
          SwitchListTile(
            title: const Text("DarkMode"),
            value: _aberto, 
            onChanged: onChanged
            )
         ] )// "Seja bem Vindo(a)"),
      backgroundColor: const Color.fromARGB(255, 187, 160, 110),
      
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Menu",
            style: GoogleFonts.vibes(
              fontSize: 30
            ),
            ),),
            ListTile(leading: Icon(Icons.movie), title: Text("Filmes"),),
            ListTile(title: Text("Séries"),),
            ListTile(title: Text("Doramas"),),
            ListTile(title: Text("Anime"),),
            ListTile(title: Text("Home"),),
          ],
        ),
      ),
    );
  }
} */

///////////////////////////////////////////////////////

// resolução do professor


class ExercicioMaterialApp extends StatefulWidget {
  const ExercicioMaterialApp({super.key});

  @override
  State<ExercicioMaterialApp> createState() => _ExercicioMaterialAppState();
}

class _ExercicioMaterialAppState extends State<ExercicioMaterialApp> {
  bool isDarkMode = false; 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Correção do Exercício",
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: HomePage(
        toggleTheme: () {
          setState(() {
            isDarkMode = !isDarkMode;
          });
        },
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final VoidCallback toggleTheme;
  const HomePage({required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text("Receitinhas"),),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text(
                "Menu de navegação", 
              style: TextStyle(color: Colors.brown, fontSize: 24),
              ),
              decoration: BoxDecoration(color: const Color.fromARGB(255, 164, 126, 84)),
              ),
              ListTile(
                leading: Icon(Icons.cake),
                title: Text("Bolos"),
                onTap: () {
                  
                }
                ),
              ListTile(
                leading: Icon(Icons.cookie),
                title: Text("Biscoito"),
                onTap: () {

                }
                ),
              ListTile(
                leading: Icon(Icons.coffee),
                title: Text("Bebidas"),
                onTap: () {

                }
                ),
              ListTile(
                leading: Icon(Icons.local_pizza),
                title: Text("Salgados"),
                onTap: () {

                }
                ),
              ListTile(
                leading: Icon(Icons.icecream),
                title: Text("Sorvete"),
                onTap: () {

                }
                ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: Text(
                "Receitinhas feitas prera você!", 
                style: TextStyle(fontSize: 20),),
            ),
          ), 
          SwitchListTile(
            title: Text(
              Theme.of(context).brightness == Brightness.dark ? "Modo Claro" : "Modo Escuro"
              ),
            value: Theme.of(context).brightness == Brightness.dark, 
            onChanged: (value) => toggleTheme(),
            )
        ],
      ),
      bottomNavigationBar: Container(
          color: const Color.fromARGB(255, 164, 126, 84),
          padding: EdgeInsets.all(15),
          child: Text("Roddapé do app",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16),
          ),
      ),
    );
  }
}



