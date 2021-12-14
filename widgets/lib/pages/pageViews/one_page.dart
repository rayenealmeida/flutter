import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.yellow[800]),
            child: Center(
              child: Text(
                'Olá Mundo',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            )),
        Row(
          children: [
            Container(
              color: Colors.yellow[400],
              height: 100,
              width: 180,
              child: Center(
                child: Text('Container 1'),
              ),
            ),
            Container(
              color: Colors.amber[300],
              height: 100,
              width: 180,
              child: Center(
                child: Text('Container 2'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
