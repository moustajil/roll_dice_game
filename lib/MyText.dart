import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  const StyleText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Hello Word GOOOOOOOOO",
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    );
  }
}