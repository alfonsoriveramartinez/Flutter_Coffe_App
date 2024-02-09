import 'package:flutter/material.dart';

/// Flutter code sample for [BottomNavigationBar].

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

int _selectedIndex = 0;
  final ScrollController _homeController = ScrollController();
