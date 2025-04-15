import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); 
  }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Styling Text App',
    home: Scaffold(
      appBar:AppBar(
        title: const Text('Styling Text'),
        backgroundColor: Colors.blue,
        ),
body: const Center(
  child: Text(
    'Hello Rudi Kurnia Al Amin',
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.blue,
      decoration: TextDecoration.underline,
      ),
      ),
      ),
      ),
      );
      }
      }