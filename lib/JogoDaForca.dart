import 'package:flutter/material.dart';
import 'PalavrasRepository.dart';

class JogoDaForca extends StatefulWidget {
  @override
  _JogoDaForcaState createState() => _JogoDaForcaState();
}

class _JogoDaForcaState extends State<JogoDaForca> {
  String palavra = '';
  List<String> letrasAcertadas = [];
  int erros = 0;

  @override
  void initState() {
