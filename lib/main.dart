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
  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(milliseconds: 800),
      ),
    );
  }

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
            const Text("ElevateButtonのサンプル"),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 139, 255, 86),
                minimumSize: const Size(250, 60),
              ),
              onPressed: () {
                _showSnackBar(context, "ElevatedButtonが押されたよ");
              },
              child: const Text(
                "ElevatedButton",
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
            ),

            const Text("TextButtonのサンプル"),
            TextButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                minimumSize: const Size(250, 60),
              ),
              onPressed: () {
                _showSnackBar(context, "TextButtonが押されたよ");
              },
              child: Text(
                "TextButton",
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 9, 255, 17),
                ),
              ),
            ),
            const Text("IconButtonのサンプル"),
            IconButton(
              icon: const Icon(Icons.settings, color: Colors.blue, size: 60),
              onPressed: () {
                _showSnackBar(context, "IconButtonが押されたよ");
              },
            ),
          ],
        ),
      ),
    );
  }
}
