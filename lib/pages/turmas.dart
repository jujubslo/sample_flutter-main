import 'package:flutter/material.dart';

class TurmaPage extends StatelessWidget {
  final List<String> turmas = [
    "Alfa",
    "Beta",
    "Gama"
  ]; // Lista de nomes de turmas

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 86, 179, 255),
        appBar: AppBar(title: const Text('Suas Turmas')),
        body: ListView.builder(
          itemCount: turmas.length,
          itemBuilder: (context, index) {
            return CardExample(nomeTurma: turmas[index]);
          },
        ),
      ),
    );
  }
}

class CardExample extends StatelessWidget {
  final String nomeTurma;

  const CardExample({Key? key, required this.nomeTurma}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          splashColor: Color.fromARGB(255, 0, 85, 154).withAlpha(30),
          onTap: () {
            debugPrint('Card tapped for $nomeTurma.');
          },
          child: SizedBox(
            width: 300,
            height: 100,
            child: Center(
              child: Text(nomeTurma),
            ),
          ),
        ),
      ),
    );
  }
}
