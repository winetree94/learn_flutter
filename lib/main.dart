import 'package:flutter/material.dart';
import 'package:learn_flutter/game.dart';
import 'package:learn_flutter/tile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Align(alignment: .centerLeft, child: Text('Birdle')),
        ),
        body: Center(child: GamePage()),
      ),
    );
  }
}

class GamePage extends StatelessWidget {
  GamePage({super.key});

  final Game _game = Game();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        spacing: 5.0,
        children: [
          for (final guess in _game.guesses)
            Row(
              spacing: 5.0,
              children: [
                for (final col in guess)
                  Column(
                    spacing: 5.0,
                    children: [Tile(letter: col.char, hitType: col.type)],
                  ),
              ],
            ),
        ],
      ),
    );
  }
}
