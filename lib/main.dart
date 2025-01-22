import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          elevation: 50,
          title: const Center(
            child: Text(
              "cuestionario",
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Colors.orange,
        ),
        body: const Center(
          child: TestPage(),
        ),
      ),
    );
  }
}

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Text(
        "¿La luna gira alrededor del sol?",
        style: TextStyle(
            fontSize: 24, fontWeight: FontWeight.bold, color: Colors.pink),
      ),
      TextButton(onPressed: () {}, child: const Text("Verdadero")),
      TextButton(onPressed: () {}, child: const Text("Falso"))
    ]);
  }
}
