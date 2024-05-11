import 'package:flutter/material.dart';

import '../main.dart';

void main() {
  runApp(MyApp());
}

class Flag extends StatelessWidget {
      Flag({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Flags',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Container(
          color: Colors.white,
          child: ListView(
            children: const [
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: flag(Colors.white, Colors.pinkAccent,
                    Colors.lightBlueAccent, 100, 'https://img.freepik.com/fotos-gratis/bela-foto-das-nuvens-em-um-ceu-azul_181624-20985.jpg?w=1380&t=st=1715617585~exp=1715618185~hmac=0c5ecba64bd3ff55780ed482123fcbff6851f743e9659b4de2938ee3d7760618'),
              ),
              flag(Colors.pink, Colors.purple, Colors.blueAccent, 100,
                  'https://img.freepik.com/fotos-premium/por-do-sol-incrivel-atras-das-montanhas-em-chipre-2020_455610-865.jpg?w=1380'),
              flag(Colors.pinkAccent, Colors.amber, Colors.lightBlue, 100,
                  'https://img.freepik.com/fotos-gratis/topo-da-vista-da-montanha_23-2150528665.jpg?w=740&t=st=1715617461~exp=1715618061~hmac=727ec4c428593290f2011bcb2b803c700c270cee62f2f0180a105564396e8cb4'),
              flag(Colors.purpleAccent, Colors.white, Colors.green, 100,
                  'https://img.freepik.com/fotos-gratis/foto-vertical-de-uma-estrada-com-montanhas-magnificas-sob-o-ceu-azul-capturada-na-california_181624-44891.jpg?w=740&t=st=1715617492~exp=1715618092~hmac=51c4d7a72530b21880039755d8a6e0b1d55e4c2fa76af794d4819533b7c349bd'),
              SizedBox(
                width: 100,
              ),
            ],
          ),
        ));
  }
}

class flag extends StatelessWidget {
  final Color cor1;
  final Color cor2;
  final Color cor3;
  final double largura;
  final String image;

  const flag(this.cor1, this.cor2, this.cor3, this.largura, this.image,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black, width: 4),
                color: cor1,
              ),
              height: 140,
              width: largura,
            ),
            Container(
              child: ClipRRect(
                child: Image.network(image,fit: BoxFit.cover,),
              ),
              decoration: BoxDecoration(


                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black, width: 4),
                color: cor3,

              ),
              height: 140,
              width: largura,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.black, width: 4),
                color: cor3,
              ),
              height: 140,
              width: largura,
            ),
          ],
        ),
      ),
    );
  }
}
