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

class Dadoos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int numDadoEsquerda = 4;

    return Center(
      child: Row(children: [
        Expanded(
          child: 
            TextButton(onPressed: () { 
             },
            child: Image.asset('imagens/dado$numDadoEsquerda.png')),
        ),
        Expanded(
          child: 
            TextButton(onPressed: () { 
              print('Botão direito pressionado!');
             },
            child: Image.asset('imagens/dado2.png',)),
        )],
      ),
    );
  }
}
