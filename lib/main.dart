import 'package:flutter/material.dart';
import 'package:mine/discover/discover_page.dart';
import 'package:mine/profile_page.dart';
import 'package:mine/shop_page.dart';

import 'looks_page.dart';
import 'competition/mine_page.dart';

void main() => runApp(const Main());

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MINE',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const DiscoverPage(),
    const ProfilePage(),
    const LooksPage(),
    const ShopPage(),
    const MinePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset(
                'images/1.png',
                width: 30.0,
                height: 30.0,
                color: _selectedIndex == 0 ? Colors.black : null,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'images/2.png',
                width: 40.0,
                height: 40.0,
                color: _selectedIndex == 1 ? Colors.black : null,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'images/3.png',
                width: 45.0,
                height: 45.0,
                color: _selectedIndex == 2 ? Colors.black : null,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'images/4.png',
                width: 30.0,
                height: 30.0,
                color: _selectedIndex == 3 ? Colors.black : null,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'images/5.png',
                width: 40.0,
                height: 40.0,
                color: _selectedIndex == 4 ? Colors.black : null,
              ),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
