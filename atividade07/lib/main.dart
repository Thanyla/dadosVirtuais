import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Dados(),
        backgroundColor: Colors.deepOrangeAccent[200],
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text("Dados virtuais"),
        ),
      ),
    );
  }
}
class Dados extends StatefulWidget {
  @override
  _DadosState createState() => _DadosState();
}

class _DadosState extends State<Dados> {
  int dadoNumero1= 4;
  int dadoNumero2= 3;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: (){
                  rolarDados();
                },
                child: Image.asset('dice/dado$dadoNumero1.png'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){
                  rolarDados();
                },
                child: Image.asset('dice/dado$dadoNumero2.png'),
              ),
            )
          ],
        ),
      ),
    );
  }

  void rolarDados(){
    setState(() {
      dadoNumero1 = Random().nextInt(6)+1;
      dadoNumero2 = Random().nextInt(6)+1;
    });
  }
}
