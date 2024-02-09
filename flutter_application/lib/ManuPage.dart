import 'package:flutter/material.dart';


class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    
    Text(
      'Menú',
      style: optionStyle,
    ),
    Text(
      'Mesas',
      style: optionStyle,
    ),
    Text(
      'Cuenta',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) { setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Coffe_Tittle();
  }

  Scaffold Coffe_Tittle() {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Color(0xFFD3B19E),
      title: Center(child: const Text('Coffe App From Alfonso'),) ,
    ),
    backgroundColor: Color(0xFFD39CBD),
    body: Center(
      child: _widgetOptions.elementAt(_selectedIndex),
    ),
    bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.menu_book, color: Color(0xFF6c2e6a)), // Color del icono #6c2e6a), 
          label: 'Menú',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.table_bar, color: Color(0xFF6c2e6a)), // Color del icono #6c2e6a
            label: 'Tables',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money, color: Color(0xFF6c2e6a)), // Color del icono #6c2e6a
            label: 'Recipe',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Color.fromARGB(176, 228, 79, 104),
      onTap: _onItemTapped,
    ),
  );
  }
}
