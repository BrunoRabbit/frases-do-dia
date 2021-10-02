import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Frases do Dia',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const MyHomePage(title: 'Frases do Dia'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List _frases = [
    'Frase 01',
    'Frase 02',
    'Frase 03',
    'Frase 04',
    'Frase 05',
    'Frase 06',
    'Frase 07',
    'Frase 08',
  ];

  String geraFrase = 'Clique abaixo para mudar a frase';

  void funcao() {
    int numAleatorio = Random().nextInt(_frases.length);
    setState(() {
      geraFrase = _frases[numAleatorio];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            height: 250,
            padding: const EdgeInsets.all(25),
            child: Image.asset(
              '../assets/images/books.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            'frases do dia'.toUpperCase(),
            style: TextStyle(
              fontSize: 25,
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(geraFrase),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            child: const Text(
              'CLIQUE AQUI!',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: funcao,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
