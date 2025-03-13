import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {
  const FloatingActionButtonDemo({super.key});

  void showMessage(String message) {
    print(message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Floating Action Button Demo')),
      body: const Center(child: Text('Press the FAB!')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showMessage('Floating Action Button Clicked!'),
        child: const Icon(Icons.add),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: FloatingActionButtonDemo(),
  ));
}