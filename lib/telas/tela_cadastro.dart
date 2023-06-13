import 'package:flutter/material.dart';
import 'package:prova_clavison_reserva/componentes/botao.dart';
import 'package:prova_clavison_reserva/componentes/caixa_texto.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({super.key});

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  AppBar criaAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 29, 32, 31),
      title: const Text(
        "Menu de cadastro",
        style: TextStyle(
          color: Color.fromARGB(255, 209, 222, 222),
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  void cadastroDeEndereco() {
    Navigator.pushNamed(context, '/telaEndereco');
  }

  void cadastrarConta() {
    Navigator.pushNamed(context, '/telaReserva');
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
                  Icons.assignment_ind,
                  size: 30,
                ),
                Row(
                  children: const [
                    Icon(Icons.person, size: 20),
                    Expanded(
                      child: CaixaTexto(
                        texto: "Nome Completo",
                        senha: false,
                        msgValidacao: "Informe nome completo",
                      ),
                    ),
                    Icon(Icons.calendar_month, size: 20),
                    Expanded(
                      child: CaixaTexto(
                        texto: 'Data de nascimento',
                        senha: false,
                        msgValidacao: "Informe a data de nascimento",
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.content_paste_search_rounded, size: 20),
                    Expanded(
                      child: CaixaTexto(
                        texto: "CPF",
                        senha: false,
                        msgValidacao: "Informe cpf",
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(Icons.add_call, size: 20),
                    Expanded(
                      child: CaixaTexto(
                        texto: "Telefone",
                        senha: false,
                        msgValidacao: "Informe telefone",
                      ),
                    ),
                  ],
                ),
                Botao(funcao: cadastroDeEndereco, texto: "Endereço"),
                Row(
                  children: const [
                    Icon(Icons.lock, size: 20),
                    Expanded(
                      child: CaixaTexto(
                        texto: "Senha",
                        msgValidacao: "Informe a senha",
                        senha: true,
                      ),
                    ),
                  ],
                ),
                Botao(texto: "Cadastrar", funcao: cadastrarConta),
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