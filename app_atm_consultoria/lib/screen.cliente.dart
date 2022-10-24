import 'package:flutter/material.dart';

class ScreenCliente extends StatefulWidget {
  const ScreenCliente({super.key});

  @override
  State<ScreenCliente> createState() => _ScreenClienteState();
}

class _ScreenClienteState extends State<ScreenCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Empresa'),
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
                      'assets/images/detalhe_cliente.png',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Clientes',
                      style: TextStyle(fontSize: 20, color: Colors.lightGreen),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(16),
                child: Image(
                  image: AssetImage('assets/images/cliente1.png'),
                ),
              ),
              const Text("Empresa de software"),
              const Padding(
                padding: EdgeInsets.all(16),
                child: Image(
                  image: AssetImage('assets/images/cliente2.png'),
                ),
              ),
              const Text("Empresa de auditoria"),
            ],
          ),
        ),
      ),
    );
  }
}
