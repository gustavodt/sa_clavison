import 'package:flutter/material.dart';
import 'package:prova_clavison_reserva/componentes/botao.dart';

class TelaEdicaoQuarto extends StatefulWidget {
  const TelaEdicaoQuarto({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TelaEdicaoQuartoState createState() => _TelaEdicaoQuartoState();
}

class _TelaEdicaoQuartoState extends State<TelaEdicaoQuarto> {
  final String _imagemQuarto = "";

  void _selecionarImagem() {
  }

  void _salvarQuarto() {

  }

  @override
  Widget build(BuildContext context) {
    AppBar criaAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 29, 32, 31),
      title: const Text(
        "Adicionar/Editar quarto",
        style: TextStyle(
          color: Color.fromARGB(255, 209, 222, 222),
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  criaBody() {
    return
    SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Nome do Quarto",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Digite o nome do quarto",
              ),
              onChanged: (value) {
                setState(() {
                });
              },
            ),
            const SizedBox(height: 16),
            const Text(
              "Descrição do Quarto",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
              maxLines: 4,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Digite a descrição do quarto",
              ),
              onChanged: (value) {
                setState(() {
                });
              },
            ),
            const SizedBox(height: 16),
            const Text(
              "Preço por Noite",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Digite o preço por noite",
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                });
              },
            ),
            const SizedBox(height: 16),
            const Text(
              "Categoria do Quarto",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Digite a categoria do quarto",
              ),
              onChanged: (value) {
                setState(() {
                });
              },
            ),
            const SizedBox(height: 16),
            const Text(
              "Imagem do Quarto",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
              child: _imagemQuarto.isNotEmpty
                  ? Image.network(
                      _imagemQuarto,
                      fit: BoxFit.cover,
                    )
                  : const Placeholder(),
            ),
            const SizedBox(height: 8),
            Botao(funcao: _selecionarImagem, texto: "Selecionar imagem",),
            const SizedBox(height: 16),
            Botao(funcao: _salvarQuarto, texto: "Salvar",)
          ],
        ),
      );
  }


    return Scaffold(
      appBar: criaAppBar(),
      body: criaBody()
    );
  }
}
