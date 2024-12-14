import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(backgroundColor: Colors.red, body: GradiantContainer()),
    ),
  );
}

class GradiantContainer extends StatelessWidget {
  GradiantContainer(super.key){

  }
  @override
  Widget build(constext) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.purpleAccent,
            Colors.purple,
            Color.fromARGB(255, 103, 37, 158),
            Colors.deepPurpleAccent
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Text(
          "Hello Word",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
