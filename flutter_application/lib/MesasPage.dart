import 'package:flutter/material.dart';

class MesasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Mesas',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        // Agrega aquí cualquier widget específico para la página de Mesas
      ],
    );
  }
}
