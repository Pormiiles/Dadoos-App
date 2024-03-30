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
    return Center(
      child: Row(children: [
        Expanded(
          child: 
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Image.asset('imagens/dado1.png')
            ),
        ),
        Expanded(
          child: 
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('imagens/dado2.png',)
            ),
        )],
      ),
    );
  }
}
