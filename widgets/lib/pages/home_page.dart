import 'package:flutter/material.dart';
import 'package:widgets/pages/pageViews/one_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get child => null;

  PageController _pageController = PageController();

  int indexBottomNavigationBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teste'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Rayene'),
              accountEmail: Text('rayene@email.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.yellow[200],
                child: Text('R'),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              trailing: Icon(Icons.arrow_forward),
            )
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          OnePage(),
          Container(color: Colors.yellow[400]),
          Container(color: Colors.yellow[800])
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexBottomNavigationBar,
          onTap: (int page) {
            setState(() {
              indexBottomNavigationBar = page;
            });
            _pageController.animateToPage(
              page,
              duration: Duration(microseconds: 300),
              curve: Curves.bounceOut,
            );
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.house),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet_travel),
              label: 'item2',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.money), label: 'item3'),
          ]),
    );
  }
}
