import 'package:flutter/material.dart';
import 'PalavrasRepository.dart';
import 'JogoDaForca.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jogo da Forca',
      home: JogoDaForca(),
    );
  }
}
