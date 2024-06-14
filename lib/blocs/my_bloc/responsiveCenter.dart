
import "package:flutter/material.dart";
import "package:flutter/gestures.dart";

// berikut adalah contoh lengkap aplikasi Flutter menggunakan 
// ResponsiveCenter, CenteredCardLayout, dan 
// ResponsiveCenterScrollable dengan fungsi main:

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Flutter Layout'),
      ),
      body: CenteredCardLayout(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Hello, Flutter!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ScrollablePage()),
                );
              },
              child: const Text('Go to Scrollable Page'),
            ),
          ],
        ),
      ),
    );
  }
}

class ResponsiveCenter extends StatelessWidget {
  const ResponsiveCenter({super.key, this.maxWidth = 600, required this.child});
  final double maxWidth;
  final Widget child;

  @override
  Widget build(BuildContext context) => Center(
        child: SizedBox(
          width: maxWidth,
          child: child,
        ),
      );
}

class CenteredCardLayout extends StatelessWidget {
  const CenteredCardLayout({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0), // outer padding
        child: ResponsiveCenter(
          maxWidth: 500,
          child: Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(16.0), // inner padding
              child: child, // card contents
            ),
          ),
        ));
  }
}

class ScrollablePage extends StatelessWidget {
  const ScrollablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scrollable Content'),
      ),
      body: ResponsiveCenterScrollable(
        maxContentWidth: 600,
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Item $index'),
            );
          },
        ),
      ),
    );
  }
}

class ResponsiveCenterScrollable extends StatelessWidget {
  const ResponsiveCenterScrollable({
    super.key,
    this.maxContentWidth = 600,
    this.padding = EdgeInsets.zero,
    this.controller,
    required this.child,
  });
  final double maxContentWidth;
  final EdgeInsetsGeometry padding;
  final ScrollController? controller;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerSignal: (pointerSignal) {
        final c = controller;
        if (pointerSignal is PointerScrollEvent && c != null) {
          final newOffset = c.offset + pointerSignal.scrollDelta.dy;
          if (newOffset < c.position.minScrollExtent) {
            c.jumpTo(c.position.minScrollExtent);
          } else if (newOffset > c.position.maxScrollExtent) {
            c.jumpTo(c.position.maxScrollExtent);
          } else {
            c.jumpTo(newOffset);
          }
        }
      },
      child: Scrollbar(
        controller: controller,
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: maxContentWidth),
            child: ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
              child: Padding(
                padding: padding,
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}