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
            const Text("普通のテキスト"),

            Text(
              'TextStyleで装飾したテキスト',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),

            Text(
              "適当に影をつけたテキスト",
              style: TextStyle(
                color: Colors.red,
                fontSize: 24,
                shadows: [
                  Shadow(
                    blurRadius: 3.0,
                    color: Colors.grey,
                    offset: Offset(2.0, 2.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
