import 'package:flutter/material.dart';
import 'package:flutter_application_kcalnutritionapp/layout/defaultLayoutPages/favorites/favorites.dart';
import 'package:flutter_application_kcalnutritionapp/layout/navPages/camera.dart';
import 'package:flutter_application_kcalnutritionapp/layout/navPages/home.dart';
import 'package:flutter_application_kcalnutritionapp/layout/navPages/profile.dart';
import 'package:flutter_application_kcalnutritionapp/layout/navPages/search.dart';

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
    
    home(),
    search(),
    camera(),
    favorites(),
    profile(),
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