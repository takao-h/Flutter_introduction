import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('welcome to Flutter'),
        ),
        body: Center(
          child: Text(wordPair.asPascalCase),
        )
      )
    );
  }
}
