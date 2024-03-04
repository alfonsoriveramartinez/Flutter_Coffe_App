import 'package:flutter/material.dart';

class CuentaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFD3B19E),
        title: const Center(child: Text('Coffe App')),
      ),
      backgroundColor: const Color(0xFFD39CBD),
      body: const Center(
        child: Text(
          'Cuenta',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book, color: Color(0xFF6c2e6a)),
            label: 'Menú',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.table_bar, color: Color(0xFF6c2e6a)),
            label: 'Mesas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money, color: Color(0xFF6c2e6a)),
            label: 'Recipe',
          ),
        ],
        currentIndex: 2,
        selectedItemColor: Color.fromARGB(176, 228, 79, 104),
        onTap: (index) {},
      ),
    );
  }
}