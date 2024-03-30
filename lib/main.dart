import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          title: Text('Dadoos'),
          backgroundColor: Colors.teal.shade900,
        ),
        body: Dadoos(),
      ),
    ),
  );
}

class Dadoos extends StatefulWidget {
  const Dadoos({Key? key}) : super(key: key);

  @override
  State<Dadoos> createState() => _DadoosState();
}

class _DadoosState extends State<Dadoos> {
  int numDadoEsquerda = 1;
  int numDadoDireita = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Expanded(
          child: 
            TextButton(onPressed: () { 
              setState(() {
                numDadoEsquerda = Random().nextInt(6) + 1;
              });
             },
            child: Image.asset('imagens/dado$numDadoEsquerda.png')),
        ),
        Expanded(
          child: 
            TextButton(onPressed: () { 
              setState(() {
                numDadoDireita = Random().nextInt(6) + 1;
              });
             },
            child: Image.asset('imagens/dado$numDadoDireita.png',)),
        )],
      ),
    );
  }
}