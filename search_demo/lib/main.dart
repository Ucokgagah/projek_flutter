import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halaman Search Mata Kuliah',
      home: const SearchPage(),
    );
  }
}

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override // perbaikan dari @overide
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<String> _item = ['Pemograman Sistem Bergerak', 'Statistik', 'Kalkulus', 'Fisika', 'Agama'];
  String _query = '';

  @override
  Widget build(BuildContext context) {
    final filteredItems = _item
        .where((item) => item.toLowerCase().contains(_query.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Search View')),
      body: Column( // perbaikan dari column()
        children: [
          Padding( // perbaikan dari padding()
            padding: const EdgeInsets.all(16),
            child: TextField(
              decoration: const InputDecoration(
                labelText: 'Search...',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search), // perbaikan dari Icons.Search
              ),
              onChanged: (value) {
                setState(() {
                  _query = value;
                });
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredItems.length,
              itemBuilder: (context, index) { // perbaikan dari itembuilder
                return ListTile( // perbaikan dari ListTitle
                  title: Text(filteredItems[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
