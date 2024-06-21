import 'package:flutter/material.dart';

class MyHomePage1 extends StatelessWidget {
  const MyHomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack of Containers'),
      ),
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Positioned(
            child: Container(
              width: 350,
              height: 350,
              color: Colors.orange,
            ),
          ),
          Positioned(
            child: Container(
              width: 300,
              height: 300,
              color: Colors.purple,
            ),
          ),
          Positioned(
            child: Container(
              width: 250,
              height: 250,
              color: Colors.yellow,
            ),
          ),
          Positioned(
            child: Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
          ),
          Positioned(
            child: Container(
              width: 150,
              height: 150,
              color: Colors.green,
            ),
          ),
          Positioned(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
