import 'package:flutter/material.dart';
import 'package:flutter_application_kcalnutritionapp/layout/defaultLayoutPages/favorites.dart';
import 'package:flutter_application_kcalnutritionapp/layout/defaultLayoutPages/home.dart';


class defaultLayout extends StatefulWidget {
  const defaultLayout({Key? key}) : super(key: key);

  @override
  State<defaultLayout> createState() => _MyStatefulWidgetState();
}
class _MyStatefulWidgetState extends State<defaultLayout> {
  int _selectedIndex = 0;
  // static const TextStyle optionStyle =
  //     TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    // Text(
    //   'Index 0: Home',
    //   style: optionStyle,
    // ),
    // Text(
    //   'Index 1: Search',
    //   style: optionStyle,
    // ),
    // Text(
    //   'Index 2: Camera',
    //   style: optionStyle,
    // ),
    // Text(
    //   'Index 3: Camera',
    //   style: optionStyle,
    // ),
    // Text(
    //   'Index 4: Profile',
    //   style: optionStyle,
    // ),
    home(),
    favorites(),
    favorites(),
    favorites(),
    favorites(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedIconTheme: IconThemeData(
        color: Colors.grey,
  ),
  unselectedItemColor: Colors.deepOrangeAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt_outlined),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}