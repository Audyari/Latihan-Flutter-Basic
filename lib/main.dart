import 'package:flutter/material.dart';
import 'global_theme_data.dart'; // Pastikan Anda mengimpor kelas GlobalThemeData
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.light, // Anda bisa mengganti dengan ThemeMode.dark
      theme: GlobalThemeData.lightThemeData,
      darkTheme: GlobalThemeData.darkThemeData,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Theme Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello, Flutter!',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Button'),
            ),
          ],
        ),
      ),
    );
  }
}
