import 'dart:js';

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class RandomWords extends StatefulWidget {
  const RandomWords({ Key? key }) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return const Divider();

        final index = i ~/ 2;
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
    }
        return Text(
          _suggestions[index].asPascalCase,
          style: _biggerFont,);
    },
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('welcome to Flutter'),
        ),
        body: const Center(
          child: RandomWords(),
        )
      )
    );
  }
}
