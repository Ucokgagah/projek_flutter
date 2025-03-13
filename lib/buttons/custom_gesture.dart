import 'package:flutter/material.dart';

class CustomGestureScreen extends StatelessWidget {
  const CustomGestureScreen({super.key});

  void showMessage(String message) {
    print(message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Gesture Demo')),
      body: Center(
        child: GestureDetector(
          onTap: () => showMessage('Tap detected!'),
          onDoubleTap: () => showMessage('Double tap detected!'),
          onLongPress: () => showMessage('Long press detected!'),
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              'Tap, Double Tap, or Long Press',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: CustomGestureScreen(),
  ));
}
