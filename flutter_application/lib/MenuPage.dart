import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Menú',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        // Agrega aquí la lista y el botón flotante para la página de Menú
      ],
    );
  }
}
