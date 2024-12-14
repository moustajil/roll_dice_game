import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  const StyleText(this.name, {super.key});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    );
  }
}
