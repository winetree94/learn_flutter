import 'package:flutter/material.dart';

class GuessInput extends StatelessWidget {
  GuessInput({super.key, required this.onSubmitGuess});

  final void Function(String) onSubmitGuess;

  final TextEditingController _textEditingController = TextEditingController();

  final FocusNode _focusNode = FocusNode();

  void _onSubmit() {
    onSubmitGuess(_textEditingController.text);
    _textEditingController.clear();
    _focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              maxLength: 5,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: .all(.circular(35))),
              ),
              controller: _textEditingController,
              autofocus: true,
              focusNode: _focusNode,
              onSubmitted: (input) {
                _onSubmit();
              },
            ),
          ),
        ),
        IconButton(
          onPressed: _onSubmit,
          icon: const Icon(Icons.arrow_circle_up),
        ),
      ],
    );
  }
}
