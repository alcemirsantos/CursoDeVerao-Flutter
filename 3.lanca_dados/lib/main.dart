import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Lança Dados'),
          backgroundColor: Colors.red,
        ),
        body: LancaDadosPage(),
      ),
    ),
  );
}

class LancaDadosPage extends StatefulWidget {
  @override
  _LancaDadosPageState createState() => _LancaDadosPageState();
}

class _LancaDadosPageState extends State<LancaDadosPage> {
  int numeroDoBotao1 = 1;
  int numeroDoBotao2 = 1;

  void atualizaDado() {
    setState(() {
      numeroDoBotao1 = Random().nextInt(6) + 1;
      numeroDoBotao2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: atualizaDado,
              child: Image.asset('images/dice$numeroDoBotao1.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: atualizaDado,
              child: Image.asset('images/dice$numeroDoBotao2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
