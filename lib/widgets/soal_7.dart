import 'package:flutter/material.dart';

class MyHomePage1 extends StatelessWidget {
  MyHomePage1({super.key});

  final List<Map<String, String>> items = [
    {'title': 'Item 1', 'subtitle': 'Subtitle 1'},
    {'title': 'Item 2', 'subtitle': 'Subtitle 2'},
    {'title': 'Item 3', 'subtitle': 'Subtitle 3'},
    {'title': 'Item 4', 'subtitle': 'Subtitle 4'},
    {'title': 'Item 5', 'subtitle': 'Subtitle 5'},
    {'title': 'Item 6', 'subtitle': 'Subtitle 6'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView with Container and Column'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 400,
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: index % 2 == 0
                              ? Colors.blue[100]
                              : Colors.yellow[100],
                          borderRadius: BorderRadius.circular(8.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Text(
                          items[index]['title']!,
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          items[index]['subtitle']!,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}