import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  get child => null;

  PageController _pageController = PageController();

  int indexBottomNavigationBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          Column(
            children: [
              Container(
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
                  )),
              Row(children: [
                Container(
                  color: Colors.teal[100],
                  height: 100,
                  width: 150,
                  child: Center(
                    child: Text('Container 1'),
                  ),
                ),
                Container(
                  color: Colors.pink[100],
                  height: 100,
                  width: 150,
                  child: Center(
                    child: Text('Container 2'),
                  ),
                ),
              ])
            ],
          ),
          Container(color: Colors.green[200]),
          Container(color: Colors.yellow[200])
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int page) => _pageController.animateToPage(
                page,
                duration: Duration(microseconds: 300),
                curve: Curves.bounceOut,
              ),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.local_laundry_service_sharp),
              label: 'Item 1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_laundry_service_sharp),
              label: 'Item 2',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_laundry_service_sharp), label: 'Item'),
          ]),
    );
  }
}
