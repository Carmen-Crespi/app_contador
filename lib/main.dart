import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Contador',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ContadorPage(),
    );
  }
}

class ContadorPage extends StatefulWidget {
  const ContadorPage({super.key});

  @override
  State<ContadorPage> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  int _contador = 0;

  void _sumar() {
    setState(() {
      _contador++;
    });
  }

  void _restar() {
    setState(() {
      _contador--;
    });
  }

  void _resetear() {
    setState(() {
      _contador = 0;
    });
  }

  void _multiplicar() {
    setState(() {
      _contador *= 2;
    });
  }

  void _dividir() {
    setState(() {
      _contador = (_contador / 2).truncate();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('App Contador')),
      body: Center(
        child: Text('$_contador', style: const TextStyle(fontSize: 60)),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 35),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              heroTag: 'sumar',
              onPressed: _sumar,
              backgroundColor: const Color.fromARGB(255, 193, 152, 233),
              child: const Icon(Icons.add),
              tooltip: 'Sumar',
            ),
            FloatingActionButton(
              heroTag: 'restar',
              onPressed: _restar,
              backgroundColor: const Color.fromARGB(255, 235, 141, 134),
              child: const Icon(Icons.remove),
              tooltip: 'Restar',
            ),
            FloatingActionButton(
              heroTag: 'resetear',
              onPressed: _resetear,
              backgroundColor: const Color.fromARGB(255, 249, 251, 143),
              child: const Icon(Icons.refresh),
              tooltip: 'Resetear',
            ),
            FloatingActionButton(
              heroTag: 'multiplicar',
              onPressed: _multiplicar,
              backgroundColor: const Color.fromARGB(255, 183, 141, 215),
              child: const Icon(Icons.clear),
              tooltip: 'Multiplicar',
            ),
            FloatingActionButton(
              heroTag: 'dividir',
              onPressed: _dividir,
              backgroundColor: const Color.fromARGB(255, 129, 132, 224),
              child: const Icon(Icons.horizontal_split),
              tooltip: 'Dividir',
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
