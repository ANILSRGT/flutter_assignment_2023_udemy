import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback changeTextHandler;
  const TextControl(this.changeTextHandler, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: changeTextHandler,
      child: const Text('Change Text'),
    );
  }
}
