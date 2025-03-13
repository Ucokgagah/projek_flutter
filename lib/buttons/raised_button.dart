import 'package:flutter/material.dart';

class RaisedButtonDemo extends StatelessWidget {
  const RaisedButtonDemo({super.key});

  void showMessage(String message) {
    print(message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Raised Button Demo')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => showMessage('Raised Button Clicked!'),
          child: const Text('Raised Button'),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: RaisedButtonDemo(),
  ));
} 