import 'package:flutter/material.dart';

void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Stack Widget Demo',
home: Scaffold(
appBar: AppBar(
title: const Text('Stack Widget'),
backgroundColor: Colors.green,
),
body: Center(
child: Stack(
alignment: Alignment.center,
children: [
Container(
width: 200,
height: 200,
color: Colors.green,
),
const Text(
'Di Atas Kotak',
style: TextStyle(
color: Colors.white,
fontSize: 20,
),
),
],
),
),
),
);

}

}