
import "package:flutter/material.dart";
import "package:myapp/widgets/soal_7.dart";



// Suggested code may be subject to a license. Learn more: ~LicenseLog:4018875122.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1948520523.
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Text Judul',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyHomePage1();
  }
}
