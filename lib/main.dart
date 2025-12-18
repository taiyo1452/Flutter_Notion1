import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter講座',
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
        child: Column(
          mainAxisAlignment: .center,

          children: <Widget>[
            Icon(Icons.star, size: 30, color: Colors.yellow),
            Icon(Icons.face, size: 50, color: Colors.pink),
            Icon(Icons.settings, size: 70, color: Colors.green),
            Icon(Icons.home, size: 100, color: Colors.blue),
          ],
        ),
      ),
    );
  }
}
