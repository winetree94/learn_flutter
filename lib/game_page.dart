import 'package:flutter/material.dart';
import 'package:learn_flutter/game.dart';
import 'package:learn_flutter/guess_input.dart';
import 'package:learn_flutter/tile.dart';

class GamePage extends StatefulWidget {
  GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
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
          GuessInput(
            onSubmitGuess: (guess) {
              setState(() {
                _game.guess(guess);
              });
            },
          ),
        ],
      ),
    );
  }
}
