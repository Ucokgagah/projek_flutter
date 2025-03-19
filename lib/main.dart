import 'package:flutter/material.dart';
import 'page_one.dart';
import 'counter_app.dart';
import 'layout_example.dart';
import 'buttons/cupertino_button.dart';
import 'buttons/custom_gesture.dart';
import 'buttons/raised_button.dart';
import 'buttons/flat_button.dart';
import 'buttons/icon_button.dart';
import 'buttons/floating_action_button.dart';
import 'belajar_layout/manage_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Rudi Kurnia Al Amin_65',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontFamily: 'Arial',
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _controller = TextEditingController();
  String _displayText = '';

  void _showInputText() {
    setState(() {
      _displayText = _controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Rudi Kurnia Al Amin_65'),
        backgroundColor: Colors.orange,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Text(
                'Menu Drawer',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            _buildDrawerItem(Icons.home, 'Home', context, const HomeScreen()),
            _buildDrawerItem(Icons.settings, 'Settings', context, const CounterApp()),
            _buildDrawerItem(Icons.info, 'About', context, const LayoutExample()),
            _buildDrawerItem(Icons.exit_to_app, 'Logout', context, const PageOne()),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _controller,
                  decoration: const InputDecoration(
                    labelText: 'Masukkan Teks',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: _showInputText,
                child: const Text('Tampilkan Teks'),
              ),
              const SizedBox(height: 10),
              Text(
                _displayText,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),

              // Responsive Box
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 200,
                color: Colors.orange,
                child: const Center(
                  child: Text(
                    'Responsive Box',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Box Model yang ditambahkan
              Center(
                child: Container(
                  width: 250,
                  height: 100,
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Box Model',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  iconCard(Icons.star, Colors.amber, 'Bintang'),
                  iconCard(Icons.favorite, Colors.red, 'Favorit'),
                  iconCard(Icons.home, Colors.green, 'Beranda'),
                  iconCard(Icons.phone, Colors.blue, 'Telepon'),
                  iconCard(Icons.shopping_cart, Colors.purple, 'Keranjang'),
                ],
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  gifCard(
                    'https://media.giphy.com/media/xT9IgzoKnwFNmISR8I/giphy.gif',
                    'GIF Animasi',
                  ),
                  const SizedBox(width: 20),
                  imageCard('assets/images/rudi.png', 'Gambar Rudi'),
                ],
              ),
              const SizedBox(height: 40),
              _buildNavigationButton(context, 'Go to Page One', Colors.orange, const PageOne()),
              _buildNavigationButton(context, 'Go to Counter App', Colors.orange, const CounterApp()),
              _buildNavigationButton(context, 'Go to Layout Example', Colors.orange, const LayoutExample()),
              _buildNavigationButton(context, 'Raised Button', Colors.orange, const RaisedButtonDemo()),
              _buildNavigationButton(context, 'Flat Button', Colors.orange, const FlatButtonDemo()),
              _buildNavigationButton(context, 'Icon Button', Colors.orange, const IconButtonDemo()),
              _buildNavigationButton(context, 'Floating Action Button', Colors.orange, const FloatingActionButtonDemo()),
              _buildNavigationButton(context, 'Cupertino Button', Colors.orange, const CupertinoButtonScreen()),
              _buildNavigationButton(context, 'Custom Gesture', Colors.orange, const CustomGestureScreen()),
              _buildNavigationButton(context, 'Manage Widget', Colors.orange, const ManageWidget()),
            ],
          ),
        ),
      ),
    );
  }

  Widget iconCard(IconData icon, Color color, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Icon(icon, size: 40, color: color),
          const SizedBox(height: 5),
          Text(label),
        ],
      ),
    );
  }

  Widget imageCard(String imagePath, String label) {
    return Column(
      children: [
        Image.asset(imagePath, width: 100, height: 100, errorBuilder: (context, error, stackTrace) => const Text('Gagal memuat gambar!')),
        const SizedBox(height: 5),
        Text(label),
      ],
    );
  }

  Widget gifCard(String gifUrl, String label) {
    return Column(
      children: [
        Image.network(
          gifUrl,
          width: 150,
          height: 120,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return const CircularProgressIndicator();
          },
          errorBuilder: (context, error, stackTrace) {
            return const Text('Gagal memuat GIF!');
          },
        ),
        const SizedBox(height: 5),
        Text(label),
      ],
    );
  }

  Widget _buildNavigationButton(BuildContext context, String title, Color color, Widget targetPage) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => targetPage),
          );
        },
        child: Text(title),
      ),
    );
  }

  Widget _buildDrawerItem(IconData icon, String title, BuildContext context, Widget targetPage) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => targetPage));
      },
    );
  }
}
