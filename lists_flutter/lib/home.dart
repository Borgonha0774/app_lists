import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _itens = [];

  void _carregarItens() {
    for (var i = 0; i <= 10; i++) {
      Map<String, dynamic> item = Map();
      item['titulo'] = 'Titulo ${i} Lorem ipsum dolor sit amet';
      item['descricao'] = 'Descrição ${i} Lorem ipsum dolor sit amet';
      _itens.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    _itens = [];
    _carregarItens();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'List',
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: _itens.length,
          itemBuilder: (context, indice) {
            return ListTile(
              title: Text(
                _itens[indice]['titulo'].toString(),
              ),
              subtitle: Text(
                _itens[indice]['descricao'].toString(),
              ),
            );
          },
        ),
      ),
    );
  }
}
