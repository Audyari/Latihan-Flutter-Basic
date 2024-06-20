import 'package:flutter/material.dart';

// ignore: camel_case_types
class soal_7 extends StatefulWidget {
  const soal_7({super.key});

  @override
  State<soal_7> createState() => _soal_7State();
}

// ignore: camel_case_types
class _soal_7State extends State<soal_7> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Soal 16')),
        backgroundColor: Colors.teal,
      ),
      body: Scrollbar(
        controller: _scrollController,
        child: GridView.builder(
          controller: _scrollController,
          itemCount: 27,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 16.0,
            crossAxisSpacing: 16.0,
          ),
          itemBuilder: (context, index) => Container(
            color: index % 2 == 0 ? Colors.blue : Colors.yellow,
            child: Center(
              child: Text(
                'Hello $index',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}