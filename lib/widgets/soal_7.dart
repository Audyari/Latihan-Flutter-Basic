import 'package:flutter/material.dart';

class MyHomePage1 extends StatelessWidget {
  const MyHomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container with Circular Decoration'),
      ),
      body: Center(
        child: Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.blue,
              width: 10.0,
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Image(
              image: NetworkImage('https://source.unsplash.com/random/500x500'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}