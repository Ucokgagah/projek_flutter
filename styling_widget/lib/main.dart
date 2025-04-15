import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container Decorations Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container & Decorations'),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(20), //diubah jadi 20
              border: Border.all(
                color: Colors.blue, //border biru
                width: 2,
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5,
                ),
              ],
            ),
            child: const Text('Ini Container dengan dekorasi'),
          ),
        ),
      ),
    );
  }
}
