import 'package:flutter/material.dart';

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                color: Colors.yellow,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.blue,
                height: 50,
                width: 50,
              )
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.yellow,
                height: 50,
                width: 50,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                color: Colors.yellow,
                height: 50,
                width: 50,
              ),
              Container(
                color: Colors.blue,
                height: 50,
                width: 50,
              ),
              Container(
                color: Colors.red,
                height: 50,
                width: 50,
              )
            ],
          ),
          Container(
            color: Colors.amber,
            height: 30,
            width: 300,
            child: const Text(
              'Diamante amarelo',
              style: TextStyle(color: Colors.black, fontSize: 28),
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                print('vc apertou o botao');
              },
              child: const Text('aperte o botao')),
        ],
      ),
    );
  }
}
