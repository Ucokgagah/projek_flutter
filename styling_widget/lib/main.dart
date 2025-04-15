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
            child: Padding(
              padding: const EdgeInsets.all(16), // Tambah padding biar rapi
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Nama Mahasiswa: Rudi Kurnia Al A'),
                    subtitle: Text('Teknik Informatika'),
                  ),
                  const SizedBox(height: 8), // Jarak antara teks dan tombol
                  ElevatedButton(
                    onPressed: () {
                      // Aksi saat tombol ditekan
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Lihat Profil ditekan!')),
                      );
                    },
                    child: const Text('Lihat Profil'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
