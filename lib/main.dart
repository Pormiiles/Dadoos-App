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

class Dadoos2 extends StatefulWidget {
  const Dadoos2({Key? key}) : super(key: key);

  @override
  State<Dadoos2> createState() => _Dadoos2State();
}

class _Dadoos2State extends State<Dadoos2> {
  int numDadoEsquerda = 4;

  @override
  Widget build(BuildContext context) {

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