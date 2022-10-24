import 'package:flutter/material.dart';

class ScreenServico extends StatefulWidget {
  const ScreenServico({super.key});

  @override
  State<ScreenServico> createState() => _ScreenServicoState();
}

class _ScreenServicoState extends State<ScreenServico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Serviços'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: const <Widget>[
                      Image(
                        image: AssetImage(
                          'assets/images/detalhe_servico.png',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Nossos serviços',
                          style:
                              TextStyle(fontSize: 20, color: Colors.lightGreen),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text("Consultoria"),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text("Calculos de preços"),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text("Acompanhamentos de projetos"),
                  ),
                ],
              ))),
    );
  }
}
