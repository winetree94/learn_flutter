import 'package:flutter/material.dart';
import 'package:learn_flutter/game_page.dart';

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
