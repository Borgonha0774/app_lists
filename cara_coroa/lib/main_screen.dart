import 'dart:math';

import 'package:cara_coroa/crown_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  void _sorteio() {
    var number = Random().nextInt(200);
    String? resultado;

    if ((number % 2) == 0) {
      resultado = 'cara';
    } else {
      resultado = 'coroa';
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CrownScreen(crown: resultado),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff61bd86),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: Image(
                    image: AssetImage('assets/images/logo.png'),
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
                    onTap: _sorteio,
                    child: const Image(
                      image: AssetImage('assets/images/botao_jogar.png'),
                    ),
                  ),
                ),
              ],
            )
          ]),
    );
  }
}
