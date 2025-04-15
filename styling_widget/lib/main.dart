import 'package:flutter/material.dart';

void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({super.key});
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Card Widget Demo',
home: Scaffold(
appBar: AppBar(
title: const Text('Card Widget'),
backgroundColor: Colors.teal,
),
body: Center(
child: Card(
elevation: 4,
margin: const EdgeInsets.all(16),
child: ListTile(
leading: const Icon(Icons.person),
title: const Text('Nama Mahasiswa'),
subtitle: const Text('Teknik Informatika'),
),
),
),
),
);
}
}