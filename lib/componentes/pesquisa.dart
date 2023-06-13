import 'package:flutter/material.dart';

class CaixaPesquisa extends StatelessWidget {
  const CaixaPesquisa({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1450,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(255, 209, 222, 222), 
      ),
      padding: const EdgeInsets.all(3),
      margin: const EdgeInsets.all(10),
      child: const TextField(
        decoration: InputDecoration(
          hintText: "Procure por quartos, serviços ou descontos!",
          border: InputBorder.none,
          icon: Icon(Icons.search),
        ),
      ),
    );
  }
}