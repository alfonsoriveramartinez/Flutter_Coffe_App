import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
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
        backgroundColor: Color.fromARGB(220, 204, 166, 204),
        title: Center(child: const Text('Coffee App')),
      ),
      backgroundColor: Color.fromARGB(255, 241, 200, 224),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
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
            label: 'Cuenta',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(176, 228, 79, 104),
        onTap: _onItemTapped,
      ),
    );
  }

  final List<Widget> _widgetOptions = <Widget>[
    ListView(
          children: <Widget>[
            ListTile(
              title: Text('Caffe',textAlign: TextAlign.center),
              subtitle: Text("25.00",textAlign: TextAlign.center ),
            ),
            ListTile(
              title: Text('Caffe Expresso',textAlign: TextAlign.center),
              subtitle: Text("25.00",textAlign: TextAlign.center),
            ),
            ListTile(
              title: Text('Capuccino',textAlign: TextAlign.center),
              subtitle: Text("25.00",textAlign: TextAlign.center),
            ),
            ListTile(
              title: Text('Mokaccino',textAlign: TextAlign.center),
              subtitle: Text("25.00",textAlign: TextAlign.center),
            ),
            ListTile(
              title: Text('Rebanada Pastel',textAlign: TextAlign.center),
              subtitle: Text("25.00",textAlign: TextAlign.center),
            ),
            ListTile(
              title: Text('Pay',textAlign: TextAlign.center),
              subtitle: Text("25.00",textAlign: TextAlign.center),
            ),
  ]),
    ListView(
      children: <Widget>[
        ListTile(
          title: Text('Mesa 1',textAlign: TextAlign.center),
        ),
        ListTile(
          title: Text('Mesa 2',textAlign: TextAlign.center),
        ),
        ListTile(
          title: Text('Mesa 3',textAlign: TextAlign.center),
        ),
        ListTile(
          title: Text('Mesa 4',textAlign: TextAlign.center),
        ),
        // Agregar más elementos según sea necesario
      ],
    ),
    Form(
      child: Column(
        children: <Widget>[
          Center(
            child:
                  TextFormField(
                      decoration: InputDecoration(labelText: 'Cuenta Mesa 1',),
                    ),
            ),
          Center(
            child:
            TextFormField(
            decoration: InputDecoration(labelText: 'Cuenta Mesa 2'),
            )
          ),
          Center(
            child:
            TextFormField(
            decoration: InputDecoration(labelText: 'Cuenta Mesa 1'),
          ),
          ),
          
          Center(
            child: 
          TextFormField(
            decoration: InputDecoration(labelText: 'Cuenta Mesa 2'),
          ),
          ),
          // Agregar más campos según sea necesario
        ],
      ),
    ),
  ];
}
