// ignore_for_file: prefer_typing_uninitialized_variables, duplicate_ignore

import 'package:flutter/material.dart';

// ignore: duplicate_ignore
class Botao extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final texto;
  final funcao;
  const Botao({super.key, this.texto, this.funcao});

  @override
  State<Botao> createState() => _BotaoState();
}

class _BotaoState extends State<Botao> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 29, 32, 31),
          shadowColor: const Color.fromARGB(255, 148, 148, 148),
          elevation: 15,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          minimumSize: const Size(200, 40),
        ),
        onPressed: widget.funcao,
        child: Text(widget.texto),
      ),
    );
  }
}
