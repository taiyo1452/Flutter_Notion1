import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter講座Part1',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const FlutterLesson(title: 'Flutter講座 part1 '),
    );
  }
}

class FlutterLesson extends StatefulWidget {
  const FlutterLesson({super.key, required this.title});
  final String title;

  @override
  State<FlutterLesson> createState() => _FlutterLesson();
}

class _FlutterLesson extends State<FlutterLesson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              "../assets/images/NyanCat.gif",
              width: 200,
              height: 200,
            ),

            Positioned(
              top: 10,
              left: 0,
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.black.withAlpha(128),
                child: const Text(
                  "Nyan Cat",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),

            const Positioned(
              bottom: 10,
              right: 10,
              child: Icon(Icons.favorite, size: 48, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
