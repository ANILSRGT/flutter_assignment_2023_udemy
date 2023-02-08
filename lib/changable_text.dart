import 'package:flutter/material.dart';

class ChangableText extends StatelessWidget {
  final List<String> texts;
  final int textIndex;
  const ChangableText(this.texts, this.textIndex, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      texts[textIndex],
      style: const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}
