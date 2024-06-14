import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

// ignore: camel_case_types
class soal_2 extends StatelessWidget {
  const soal_2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const FlutterLogo(
          size: 1.0,
        ),
        title: const Text('Text Judul'),
        actions: [
          IconButton(
            onPressed: () {
              if (kDebugMode) {
                print("Tombol menu diklik1");
              }
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: const Center(
        child: Text(
          'Hello World',
          style: TextStyle(
            fontSize: 50,
            color: Color.fromARGB(255, 14, 13, 13),
            fontWeight: FontWeight.bold, // membuat teks tebal
            fontStyle: FontStyle.italic, // membuat teks miring
            decoration: TextDecoration.underline, // menambahkan garis bawah
          ),
        ),
      ),
    );
  }
}
