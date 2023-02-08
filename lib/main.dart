import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_assignment/changable_text.dart';
import 'package:flutter_assignment/text_control.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> _texts = <String>[
    'Text 1',
    'Text 2',
    'Text 3',
    'Text 4',
    'Text 5',
  ];

  int _currentTextIndex = 0;

  void _nextText() {
    setState(() {
      _currentTextIndex = (_currentTextIndex + 1) > (_texts.length - 1) ? 0 : (_currentTextIndex + 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: double.infinity),
            const Spacer(),
            ChangableText(_texts, _currentTextIndex),
            const Spacer(flex: 6),
            TextControl(_nextText),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
