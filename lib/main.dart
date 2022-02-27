import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
void main() => runApp(const MyApp()); /*1*/

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();

    return const MaterialApp(
      title: 'Welcome to Flutter',
      home: RandomWords()
    );
  }
}

class RandomWordsState extends State<RandomWords> {

  // _から始まる変数名はprivate変数を示しclass内しか使えない
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StartUp Name Generator")
      ),
      body: _buildSuggestions()
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i.isOdd) return const Divider();
        final index = i~/2;
        if(index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        style: _biggerFont,
      )
    );
  }

}

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  RandomWordsState createState() => RandomWordsState();
}