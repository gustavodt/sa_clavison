import 'package:flutter/material.dart';
import 'package:prova_clavison_reserva/telas/tela_cadastro.dart';
import 'package:prova_clavison_reserva/telas/tela_endereco.dart';
import 'package:prova_clavison_reserva/telas/tela_funcionario.dart';
import 'package:prova_clavison_reserva/telas/tela_login.dart';
import 'package:prova_clavison_reserva/telas/tela_pagamento.dart';
import 'package:prova_clavison_reserva/telas/tela_quarto.dart';
import 'package:prova_clavison_reserva/telas/tela_reserva.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/telaLogin',
      routes: {
        '/telaFuncionario' :(context) => const TelaFuncionario(),
        '/telaCadastro':(context) => const TelaCadastro(),
        '/telaEndereco':(context) => const TelaEndereco(),
        '/telaLogin':(context) => const TelaLogin(),
        '/telaReserva':(context) => const TelaReserva(),
        '/telaPagamento' :(context) => const TelaPagamento(),
        '/telaQuarto':(context) => const TelaEdicaoQuarto(),
      },
    );
  }
}