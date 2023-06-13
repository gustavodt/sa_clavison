import 'package:flutter/material.dart';
import 'package:prova_clavison_reserva/componentes/botao.dart';
import 'package:prova_clavison_reserva/componentes/caixa_texto.dart';

class TelaFuncionario extends StatefulWidget {
  const TelaFuncionario({Key? key}) : super(key: key);

  @override
  State<TelaFuncionario> createState() => _TelaFuncionarioState();
}

class _TelaFuncionarioState extends State<TelaFuncionario> {
  void relatorioNaoPagmt() {
    
  }

  void relatorioVendas() {
    
  }

  void gerenciarQuartos() {
    Navigator.pushNamed(context, '/telaQuarto');
  }

  AppBar criaAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 29, 32, 31),
      title: const Text("Menu de funcionário"),
      titleTextStyle: const TextStyle(
        color: Color.fromARGB(255, 209, 222, 222),
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget criaBody() {
    return Column(
      children: [
        Center(
          child: Container(
            width: 400,
            height: 280,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.account_circle_rounded, size: 30),
                Botao(texto: "Imprimir relatorio de não pagamento", funcao: relatorioNaoPagmt),
                Botao(texto: "Gerar relatorio de vendas", funcao: relatorioVendas),
                Botao(texto: "Gerenciar quartos", funcao: gerenciarQuartos,),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: criaAppBar(),
      body: criaBody(),
    );
  }
}
