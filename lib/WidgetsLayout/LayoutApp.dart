import 'package:flutter/material.dart';
import 'package:meu_app/WidgetsLayout/WidgetColumn.dart';
import 'package:meu_app/WidgetsLayout/WidgetConteiner.dart';
import 'package:meu_app/WidgetsLayout/WidgetRow.dart';

class LayoutApp extends StatelessWidget {
  const LayoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Widgets de Layout",
      home: MontandoTela(),
    );
  }
}

class MontandoTela extends StatefulWidget {
  const MontandoTela({super.key});

  @override
  State<MontandoTela> createState() => _MontandoTelaState();
}

class _MontandoTelaState extends State<MontandoTela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Widget de layout"),),
      // body: Widgetconteiner(),
      // body: Widgetcolumn(),
      body: WidgetRow(),
    );
  }
}