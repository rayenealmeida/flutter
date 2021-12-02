import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
      ),
      body: Container(
        height: 200,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.purple[200]),
        child: Center(
          child: Text(
            'Olá Mundo',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
