import 'package:flutter/material.dart';
import 'package:prova_clavison_reserva/componentes/botao.dart';
import 'package:prova_clavison_reserva/componentes/caixa_texto.dart';

class TelaEndereco extends StatefulWidget {
  const TelaEndereco({Key? key}) : super(key: key);

  @override
  State<TelaEndereco> createState() => _TelaEnderecoState();
}

class _TelaEnderecoState extends State<TelaEndereco> {
  AppBar criaAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 29, 32, 31),
      title: const Text(
        "Menu de endereço",
        style: TextStyle(
          color: Color.fromARGB(255, 209, 222, 222),
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  void cadastraEndereco() {
    Navigator.pushNamed(context, '/telaCadastro');
  }

  Widget criaBody() {
    return Column(
      children: [
        Center(
          child: Container(
            width: 500,
            height: 460,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.add_location_alt_sharp,
                  size: 30,
                ),
                Row(
                  children: const [
                    Icon(Icons.add_home_outlined, size: 20),
                    Expanded(
                      child: CaixaTexto(texto: "Cep", senha: false),
                    ),
                    Icon(Icons.real_estate_agent, size: 20),
                    Expanded(
                      child: CaixaTexto(texto: "Estado", senha: false),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.location_city, size: 20),
                    Expanded(
                      child: CaixaTexto(texto: "Cidade", senha: false),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.emoji_transportation, size: 20),
                    Expanded(
                      child: CaixaTexto(texto: "Bairro", senha: false),
                    ),
                    Icon(Icons.house, size: 20),
                    Expanded(
                      child: CaixaTexto(texto: "Número", senha: false),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.add_road, size: 20),
                    Expanded(
                      child: CaixaTexto(texto: "Rua", senha: false),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.add_to_photos_outlined, size: 20),
                    Expanded(
                      child: CaixaTexto(texto: "Complemento", senha: false),
                    ),
                  ],
                ),
                Botao(
                  texto: "Cadastrar endereço",
                  funcao: cadastraEndereco,
                ),
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
