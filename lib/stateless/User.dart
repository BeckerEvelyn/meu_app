import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User extends StatelessWidget{
  @override
  Widget build(Object context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Cartão de usuário")),
        body: const Center(
          child: UserCard(
            nome: 'Evelyn Becker',
            email: "beckernyleve@gmail.com",
            avataUrl: 'https://wallpaper.forfun.com/fetch/10/107114e3f21665c98d9dc790f19d7d0b.jpeg',
          ),
        ),
      ),
    );
  }

}

class UserCard extends StatelessWidget{
  final String nome;
  final String email;
  final String avataUrl;

  const UserCard({
    super.key,
    required this.nome,
    required this.email,
    required this.avataUrl
});
  @override
  Widget build(Object context) {
    return SizedBox(
      height: 120,
      child: Card(
        elevation: 4,
        margin: const EdgeInsets.all(16),
        child: Padding(padding: const EdgeInsets.all(16),
        child: Row(children: [
          CircleAvatar(
            backgroundImage: NetworkImage(avataUrl),
            radius: 30,
          ),
          const SizedBox(width: 16,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(nome, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
              Text(nome, style: TextStyle(fontSize: 15, color: CupertinoColors.placeholderText),)
            ],
          )
        ],),),
      ),
    );
}
}