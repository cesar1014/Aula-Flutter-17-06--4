import 'package:flutter/material.dart';
import 'package:flutter_aula11_4/itens.dart';

class Grade extends StatelessWidget {
  const Grade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grade'),
      ),
      body: GridView.builder(
          itemCount: Itens.letras.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                title: Center(
                  child: Text(
                    Itens.letras[index],
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                tileColor: Colors.blue,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Você selecionou: ${Itens.letras[index]}'),
                    ),
                  );
                },
              ),
            );
          }),
    );
  }
}
