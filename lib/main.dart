import 'package:flutter/material.dart';
// Pastikan Anda mengimpor kelas GlobalThemeData
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp() as Widget);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return const MaterialApp(
      title: 'GridView Example',
      home: GridViewExample(),
    );
  }
}

class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView Example'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Jumlah kolom dalam grid
          crossAxisSpacing: 10.0, // Jarak antar kolom
          mainAxisSpacing: 10.0, // Jarak antar baris
        ),
        itemCount: 12, // Jumlah item dalam grid
        itemBuilder: (context, index) {
          return Container(
            color: Colors.primaries[index % Colors.primaries.length], // Warna latar belakang
            child: Center(
              child: Text(
                'Item ${index + 1}',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
