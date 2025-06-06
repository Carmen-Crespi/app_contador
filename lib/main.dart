import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'App Contador', home: const ContadorPage());
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
              backgroundColor: const Color.fromARGB(255, 228, 148, 192),
              child: const Icon(Icons.add),
              tooltip: 'Sumar',
            ),
            FloatingActionButton(
              heroTag: 'restar',
              onPressed: _restar,
              backgroundColor: const Color.fromARGB(255, 222, 134, 128),
              child: const Icon(Icons.remove),
              tooltip: 'Restar',
            ),
            FloatingActionButton(
              heroTag: 'resetear',
              onPressed: _resetear,
              backgroundColor: const Color.fromARGB(255, 122, 186, 238),
              child: const Icon(Icons.refresh),
              tooltip: 'Resetear',
            ),
            FloatingActionButton(
              heroTag: 'multiplicar',
              onPressed: _multiplicar,
              backgroundColor: const Color.fromARGB(255, 220, 175, 108),
              child: const Icon(Icons.clear),
              tooltip: 'Multiplicar',
            ),
            FloatingActionButton(
              heroTag: 'dividir',
              onPressed: _dividir,
              backgroundColor: const Color.fromARGB(255, 199, 116, 214),
              child: const Icon(Icons.border_horizontal),
              tooltip: 'Dividir',
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
