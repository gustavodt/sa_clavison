import 'package:flutter/material.dart';
import 'package:prova_clavison_reserva/componentes/botao.dart';
import 'package:prova_clavison_reserva/componentes/caixa_texto.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({Key? key}) : super(key: key);

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  void logarConta() {
    Navigator.pushNamed(context, '/telaReserva');
  }

  void entrarTelaCadastro() {
    Navigator.pushNamed(context, '/telaCadastro');
  }

  AppBar criaAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 29, 32, 31),
      title: const Text("Menu de login"),
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
                const CaixaTexto(
                  senha: false,
                  msgValidacao: "Informe o e-mail",
                  texto: "Login",
                ),
                const CaixaTexto(
                  senha: true,
                  msgValidacao: "Informe a senha correta",
                  texto: "Senha",
                ),
                Botao(texto: "Entrar", funcao: logarConta),
              ],
            ),
          ),
        ),
        Center(
          child: Column(
            children: [
              const Text(
                "Ou crie um cadastro clicando abaixo",
                style: TextStyle(fontSize: 18),
              ),
              Botao(texto: 'Criar cadastro', funcao: entrarTelaCadastro),
            ],
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
