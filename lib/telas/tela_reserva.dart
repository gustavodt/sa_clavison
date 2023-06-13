import 'package:flutter/material.dart';
import 'package:prova_clavison_reserva/componentes/imagem_texto.dart';
import 'package:prova_clavison_reserva/componentes/pesquisa.dart';

class TelaReserva extends StatefulWidget {
  const TelaReserva({Key? key}) : super(key: key);

  @override
  State<TelaReserva> createState() => _TelaReservaState();
}

class _TelaReservaState extends State<TelaReserva> {
  AppBar criaAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 29, 32, 31),
      title: const Text(
        "Inicio",
        style: TextStyle(
          color: Color.fromARGB(255, 209, 222, 222),
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget criaBody() {
    return Column(
      children: [
        Center(
          child: Container(
            width: 1470,
            height: 70,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 209, 222, 222),
              border: Border.all(),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(5),
            child: Column(
              children: [
                Row(
                  children: const [
                    SizedBox(width: 40),
                    Icon(Icons.house, size: 30),
                    SizedBox(width: 195),
                    Icon(Icons.house_outlined, size: 30),
                    SizedBox(width: 195),
                    Icon(Icons.houseboat, size: 30),
                    SizedBox(width: 195),
                    Icon(Icons.house_siding, size: 30),
                    SizedBox(width: 195),
                    Icon(Icons.house_siding_outlined, size: 30),
                    SizedBox(width: 195),
                    Icon(Icons.bed, size: 30),
                    SizedBox(width: 182),
                    Icon(Icons.beach_access_rounded, size: 30),
                  ],
                ),
                Row(
                  children: const [
                    SizedBox(width: 37),
                    Text(
                      "Suite",
                      style: TextStyle(
                        color: Color.fromARGB(255, 29, 32, 31),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 158),
                    Text(
                      "Quarto rustico",
                      style: TextStyle(
                        color: Color.fromARGB(255, 29, 32, 31),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 110),
                    Text(
                      "Quarto com vista",
                      style: TextStyle(
                        color: Color.fromARGB(255, 29, 32, 31),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 110),
                    Text(
                      "Compartilhado",
                      style: TextStyle(
                        color: Color.fromARGB(255, 29, 32, 31),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 122),
                    Text(
                      "Quarto de luxo",
                      style: TextStyle(
                        color: Color.fromARGB(255, 29, 32, 31),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 105),
                    Text(
                      "Quarto em desconto",
                      style: TextStyle(
                        color: Color.fromARGB(255, 29, 32, 31),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 70),
                    Text(
                      "Quarto c/ varanda",
                      style: TextStyle(
                        color: Color.fromARGB(255, 29, 32, 31),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const Center(
          child: CaixaPesquisa(),
        ),
        Row(
          children: const [
            SizedBox(width: 17),
            ImagemTexto(
              imagePath:
                  'https://cdn.pixabay.com/photo/2016/11/30/08/48/bedroom-1872196_1280.jpg',
              text: 'Em desconto\nQuarto com cama de casal de luxo\nRS730,00 a noite',
            ),
            SizedBox(width: 50),
            ImagemTexto(
              imagePath:
                  'https://cdn.pixabay.com/photo/2014/08/11/21/40/bedroom-416062_1280.jpg',
              text: 'Quarto com vista\nQuarto com vista para ponto turistico\nRS650,00 a noite',
            ),
            SizedBox(width: 50),
            ImagemTexto(
              imagePath:
                  'https://media.istockphoto.com/id/1453169984/pt/foto/3d-render-hotel-suite-with-luxury-bathroom.jpg?s=1024x1024&w=is&k=20&c=3s64VGwuD6-7dJJ1jMD0OWxeD6VeJd8lQiWTQq-scNQ=',
              text: 'Quarto com varanda\nQuarto com varanda e banheiro duplo\nRS670,00 a noite',
            ),
            SizedBox(width: 50),
            ImagemTexto(
              imagePath:
                  'https://cdn.pixabay.com/photo/2016/11/18/17/20/living-room-1835923_1280.jpg',
              text: 'Compartilhado\nQuarto compartilhado com sala de estar\nRS420,00 a noite',
            ),
            SizedBox(width: 50),
            ImagemTexto(
              imagePath:
                  'https://cdn.pixabay.com/photo/2017/01/07/17/48/interior-1961070_1280.jpg',
              text: 'Quarto rustico\nQuarto espaçoso com mobilia rustica\nRS850,00 a noite',
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: const [
            SizedBox(width: 17),
            ImagemTexto(
              imagePath:
                  'https://cdn.pixabay.com/photo/2016/11/30/08/48/bedroom-1872196_1280.jpg',
              text: 'Em desconto\nQuarto com cama de casal de luxo\nRS730,00 a noite',
            ),
            SizedBox(width: 50),
            ImagemTexto(
              imagePath:
                  'https://cdn.pixabay.com/photo/2014/08/11/21/40/bedroom-416062_1280.jpg',
              text: 'Quarto com vista\nQuarto com vista para ponto turistico\nRS650,00 a noite',
            ),
            SizedBox(width: 50),
            ImagemTexto(
              imagePath:
                  'https://media.istockphoto.com/id/1453169984/pt/foto/3d-render-hotel-suite-with-luxury-bathroom.jpg?s=1024x1024&w=is&k=20&c=3s64VGwuD6-7dJJ1jMD0OWxeD6VeJd8lQiWTQq-scNQ=',
              text: 'Quarto com varanda\nQuarto com varanda e banheiro duplo\nRS670,00 a noite',
            ),
            SizedBox(width: 50),
            ImagemTexto(
              imagePath:
                  'https://cdn.pixabay.com/photo/2016/11/18/17/20/living-room-1835923_1280.jpg',
              text: 'Compartilhado\nQuarto compartilhado com sala de estar\nRS420,00 a noite',
            ),
            SizedBox(width: 50),
            ImagemTexto(
              imagePath:
                  'https://cdn.pixabay.com/photo/2017/01/07/17/48/interior-1961070_1280.jpg',
              text: 'Quarto rustico\nQuarto espaçoso com mobilia rustica\nRS850,00 a noite',
            ),
          ],
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
