import "package:flutter/material.dart";

// ignore: camel_case_types
class soal_7 extends StatelessWidget {
  const soal_7({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Soal 6')),
        backgroundColor: Colors.teal,
      ),
      body: Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 150,
                height: 150,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Hello',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.yellow,
                child: const Center(
                  child: Text(
                    'Hello',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
