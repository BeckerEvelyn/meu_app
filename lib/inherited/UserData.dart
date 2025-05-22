import 'package:flutter/widgets.dart';

class UserData extends InheritedWidget {
  final String username;

  const UserData({
    required this.username,
    required Widget child // Widget filho que herda o nome
  }) : super(child: child); // passa o filho para  construtor pai


  /**
   * este método estático pode ser chamado independente de termos instanciado o objeto ou não.
   * definindo um método estático chamado of
   * isso significa que você pode chamar UserData.of(context) sem precisar de uma instãncia de UserData.
   * quem chamar vai receber um BuilContext, ou seja o contecto onde o widget está na árvore
   */
  static UserData of (BuildContext context){
    //este método procura o widget mais próximo do tipo UserData acima do widget atual
    final result = context.dependOnInheritedWidgetOfExactType<UserData>();
    return result!;
  }
  
  @override
  bool updateShouldNotify(UserData oldWidget) {
    return oldWidget.username != username;
  }


}