import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

// ignore: camel_case_types
class soal_6 extends StatelessWidget {
  const soal_6({
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
        //SizedBox Widget
        child: SizedBox(
          width: 200.0,
          height: 200.0,
          child: Card(
            color: Colors.green, // Tambahkan warna latar belakang
            shape: StadiumBorder(
              side: BorderSide(
                width: 0.0,
              ),
            ),
            child: Center(
              child: Text(
                'Audyari W',
                style: TextStyle(
                  color: Colors.white, // Gunakan warna putih untuk teks
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ), //SizedBox
      ), //Center
    );
  }
}
