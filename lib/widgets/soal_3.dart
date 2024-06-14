import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

// ignore: camel_case_types
class soal_3 extends StatelessWidget {
  const soal_3({
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
        child: FlutterLogo(
          size: 200,
        ),
      ),
    );
  }
}
