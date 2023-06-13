import 'package:flutter/material.dart';
import 'package:prova_clavison_reserva/componentes/botao.dart';
import 'package:prova_clavison_reserva/componentes/caixa_texto.dart';

class TelaPagamento extends StatefulWidget {
  const TelaPagamento({Key? key}) : super(key: key);

  @override
  State<TelaPagamento> createState() => _TelaPagamentoState();
}

class _TelaPagamentoState extends State<TelaPagamento> {
  String formaPagamento = '';
  String horarioReserva = '';

  AppBar criaAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: const Color.fromARGB(255, 29, 32, 31),
      title: const Text("Pagamento da Reserva"),
      titleTextStyle: const TextStyle(
        color: Color.fromARGB(255, 209, 222, 222),
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget criaFormasPagamento() {
    return Column(
      children: [
        RadioListTile(
          title: Row(
            children: const [
              Icon(Icons.credit_card, size: 20),
              SizedBox(width: 10),
              Text('Cartão de Crédito'),
            ],
          ),
          value: '',
          groupValue: formaPagamento,
          onChanged: (value) {
          },
        ),
        RadioListTile(
          title: Row(
            children: const [
              Icon(Icons.money, size: 20),
              SizedBox(width: 10),
              Text('Boleto Bancário'),
            ],
          ),
          value: 'boleto',
          groupValue: formaPagamento,
          onChanged: (value) {
          },
        ),
      ],
    );
  }

  Widget criaBody() {
  return Column(
    children: [
      const SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "Total a pagar: ",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            "R\$150,00",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),
          ),
        ],
      ),
      const SizedBox(height: 20),
      Center(
        child: Container(
          width: 400,
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              criaFormasPagamento(),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Icon(Icons.lock, size: 20),
                  SizedBox(width: 10),
                  Expanded(
                    child: CaixaTexto(
                      senha: false,
                      msgValidacao: "Número do Cartão",
                      texto: "Número do Cartão",
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Icon(Icons.calendar_today, size: 20),
                  SizedBox(width: 10),
                  Expanded(
                    child: CaixaTexto(
                      senha: false,
                      msgValidacao: "Validade",
                      texto: "Validade",
                    ),
                  ),
                  SizedBox(width: 20),
                  Icon(Icons.credit_card, size: 20),
                  SizedBox(width: 10),
                  Expanded(
                    child: CaixaTexto(
                      senha: false,
                      msgValidacao: "CVV",
                      texto: "CVV",
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const [
                  Icon(Icons.calendar_month, size: 20),
                  Expanded(child: 
                  CaixaTexto(texto: "Data entrada", senha: false),
                  ),
                  Icon(Icons.calendar_month, size: 20),
                  Expanded(child: 
                  CaixaTexto(texto: "Data saida", senha: false,)
                  )
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                      "Hórarios de reserva",
                      style: TextStyle(
                        color: Color.fromARGB(255, 29, 32, 31),
                        fontSize: 16,
                      ),
                    ),
              const SizedBox(height: 20),
              RadioListTile(
                title: const Text('08:00 - 10:00'),
                value: '08:00 - 10:00',
                groupValue: horarioReserva,
                onChanged: (value) {
                },
              ),
              RadioListTile(
                title: const Text('10:00 - 12:00'),
                value: '10:00 - 12:00',
                groupValue: horarioReserva,
                onChanged: (value) {
                },
              ),
              RadioListTile(
                title: const Text('14:00 - 16:00'),
                value: '14:00 - 16:00',
                groupValue: horarioReserva,
                onChanged: (value) {
                },
              ),
              RadioListTile(
                title: const Text('16:00 - 18:00'),
                value: '16:00 - 18:00',
                groupValue: horarioReserva,
                onChanged: (value) {
                },
              ),
              const SizedBox(height: 20),
              Botao(
                texto: "Efetuar Pagamento",
                funcao: () {
                },
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
