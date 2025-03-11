import 'package:flutter/material.dart';
import 'page_one.dart';
import 'counter_app.dart';
import 'layout_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PageOne()), // Hapus const jika PageOne tidak immutable
                );
              },
              child: const Text('Go to Page One'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CounterApp()), // Hapus const jika CounterApp tidak immutable
                );
              },
              child: const Text('Go to Counter App'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LayoutExample()), // Hapus const jika LayoutExample tidak immutable
                );
              },
              child: const Text('Go to Layout Example'),
            ),
          ],
        ),
      ),
    );
  }
}