import 'package:flutter/material.dart';

enum HitType { hit, partial, miss }

class Tile extends StatelessWidget {
  const Tile({super.key, required this.letter, this.hitType});

  final String letter;
  final HitType? hitType;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        color: switch (hitType) {
          .hit => Colors.green,
          .partial => Colors.yellow,
          .miss => Colors.grey,
          _ => Colors.white,
        },
      ),
      child: Center(
        child: Text(
          letter.toUpperCase(),
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
