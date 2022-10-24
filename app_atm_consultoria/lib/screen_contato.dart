import 'package:flutter/material.dart';

class ScreenContato extends StatefulWidget {
  const ScreenContato({super.key});

  @override
  State<ScreenContato> createState() => _ScreenContatoState();
}

class _ScreenContatoState extends State<ScreenContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Contato'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: const <Widget>[
                  Image(
                    image: AssetImage(
                      'assets/images/detalhe_contato.png',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Contato',
                      style: TextStyle(fontSize: 20, color: Colors.green),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("atendimento@consultoria.com.br"),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("Telefone: (11) 35258596"),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("Celular: (11) 99586-5236"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
