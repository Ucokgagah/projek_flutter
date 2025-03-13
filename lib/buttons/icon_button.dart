import 'package:flutter/material.dart';

class IconButtonDemo extends StatelessWidget {
  const IconButtonDemo({super.key});

  void showMessage(String message) {
    print(message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Icon Button Demo')),
      body: Center(
        child: IconButton(
          icon: const Icon(Icons.thumb_up),
          onPressed: () => showMessage('Icon Button Clicked!'),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: IconButtonDemo(),
  ));
}
