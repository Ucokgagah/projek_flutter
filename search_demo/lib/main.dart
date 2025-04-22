import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halaman NestedScrollView',
      home: const NestedScrollExample(),
    );
  }
}

class NestedScrollExample extends StatelessWidget {
  const NestedScrollExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text('NestedScrollview'),
                background: Image.network(
                  'https://nawabineka.com/wp-content/uploads/2025/04/Coding-Ist.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(title: Text('Item ${index + 1}'));
          },
        ),
      ),
    );
  }
}
