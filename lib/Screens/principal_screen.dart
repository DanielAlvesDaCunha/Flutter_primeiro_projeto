import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../widgetsComponents/task.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.blue,
        title: const Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 800),
        child: ListView(
          children: const [
            Task(
                'aprender a flutter',
                'assets/image/dash.png',
                3),
            Task(
                'aprender flutter',
                'assets/image/bike.webp',
                2),
            Task(
                'academia',
                'assets/image/jogar.jpg',
                0),
            Task('aprender flutter',
                'assets/image/meditar.jpeg', 5),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: Icon(Icons.remove_red_eye),
      ),
    );
  }
}
