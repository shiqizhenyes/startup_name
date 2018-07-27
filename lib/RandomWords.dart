import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  final List<WordPair> _suggestions = <WordPair>[];
  final Set<WordPair> _saved = new Set<WordPair>();
  final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: new AppBar(
        title: const Text('Flutter学习'),
        actions: <Widget>[
          new IconButton(icon: const Icon(Icons.list), onPressed: _pushSaved),
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  void _pushSaved() {
    Navigator.of(context).push(
        new MaterialPageRoute<void>(
            builder: (BuildContext context) {
              final Iterable<ListTile> titles = _saved.map(
                      (WordPair pair) {
                    return new ListTile(
                      title: new Text(
                        pair.asPascalCase,
                        style: _biggerFont,
                      ),
                    );
                  }
              );
              final List<Widget> divided = ListTile.divideTiles(
                context: context,
                tiles: titles,
              ).toList();
              return new Scaffold(
                appBar: new AppBar(
                  title: const Text("Saved"),
                ),
                body: new ListView(children: divided),
              );
            })
    );
  }
  Widget _buildSuggestions() {
    return new ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (BuildContext _context, int i) {
          if (i.isOdd) {
            return const Divider();
          }
          final int index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair pair) {
    final bool alReadySaved = _saved.contains(pair);
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(
        alReadySaved ? Icons.favorite : Icons.favorite_border,
        color: alReadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          if(alReadySaved) {
            _saved.remove(pair);
          }else {
            _saved.add(pair);
          }
        });
      },
    );
  }
}