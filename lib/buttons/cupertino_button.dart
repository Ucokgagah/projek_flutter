import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoButtonScreen extends StatelessWidget {
  const CupertinoButtonScreen({super.key});

  void showMessage(String message) {
    print(message);
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Cupertino Button Demo'),
      ),
      child: Center(
        child: CupertinoButton(
          onPressed: () => showMessage('Cupertino Button Clicked!'),
          color: CupertinoColors.activeBlue,
          child: const Text('Cupertino Button'),
        ),
      ),
    );
  }
}

void main() {
  runApp(const CupertinoApp(
    home: CupertinoButtonScreen(),
  ));
}
