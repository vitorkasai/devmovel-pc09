import 'package:flutter/material.dart';

class ScoreButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const ScoreButton({required this.label, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(label),
    );
  }
}