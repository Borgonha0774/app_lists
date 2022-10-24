import 'package:app_atm_consultoria/screen.cliente.dart';
import 'package:app_atm_consultoria/screen.servico.dart';
import 'package:app_atm_consultoria/screen_contato.dart';
import 'package:app_atm_consultoria/screen_empresa.dart';
import 'package:flutter/material.dart';

class ScreenMain extends StatefulWidget {
  @override
  State<ScreenMain> createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {
  void _abrirEmpresa() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: ((context) => ScreenEmpresa()),
      ),
    );
  }

  void _abrirServico() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: ((context) => ScreenServico()),
      ),
    );
  }

  void _abrirCliente() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: ((context) => ScreenCliente()),
      ),
    );
  }

  void _abrirContato() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: ((context) => ScreenContato()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('ATM Consultoria'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Image(
              image: AssetImage(
                'assets/images/logo.png',
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _abrirEmpresa,
                    child: const Image(
                      image: AssetImage(
                        'assets/images/menu_empresa.png',
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: _abrirServico,
                    child: const Image(
                      image: AssetImage(
                        'assets/images/menu_servico.png',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: _abrirCliente,
                    child: const Image(
                      image: AssetImage(
                        'assets/images/menu_cliente.png',
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: _abrirContato,
                    child: const Image(
                      image: AssetImage(
                        'assets/images/menu_contato.png',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
