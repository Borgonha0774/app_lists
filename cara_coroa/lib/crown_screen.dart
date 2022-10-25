import 'package:flutter/material.dart';

class CrownScreen extends StatefulWidget {
  String? crown;

  CrownScreen({this.crown});

  @override
  State<CrownScreen> createState() => _CrownScreenState();
}

class _CrownScreenState extends State<CrownScreen> {
  @override
  Widget build(BuildContext context) {
    var caminhoImagem;
    if (widget.crown == 'cara') {
      caminhoImagem = 'assets/images/moeda_cara.png';
    } else {
      caminhoImagem = 'assets/images/moeda_coroa.png';
    }
    return Scaffold(
      backgroundColor: const Color(0xff61bd86),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Image(
                    image: AssetImage(caminhoImagem),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Image(
                      image: AssetImage('assets/images/botao_voltar.png'),
                    ),
                  ),
                ),
              ],
            )
          ]),
    );
  }
}
