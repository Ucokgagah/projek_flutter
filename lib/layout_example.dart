import 'package:flutter/material.dart';

class LayoutExample extends StatelessWidget {
  const LayoutExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Example'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(Icons.star, size: 50, color: Colors.blue),
              Icon(Icons.favorite, size: 50, color: Colors.red),
              Icon(Icons.thumb_up, size: 50, color: Colors.green),
            ],
          ),
          Expanded(
            child: Center(
              child: const Text(
                'Welcome to Flutter!',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        ],
      ),
    );
  }
}