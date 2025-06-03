import 'package:flutter/cupertino.dart';
import 'package:meu_app/cupertino/TelaCupertino.dart';

class MyCupertino extends StatelessWidget {
  const MyCupertino({super.key});
@override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: "Aplicativo com cupertino",
      home: TelaCupertino()
    );
  }
}