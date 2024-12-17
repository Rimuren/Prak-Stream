import 'package:flutter/material.dart';

class ColorStream {
  final List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.black,
    Colors.white,
    Colors.amber,
    Colors.blueGrey,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
  ];

  Stream<Color> getColors() async*{
    yield* Stream.periodic(
      const Duration(seconds: 1),(int t){
        int index = t % colors.length;
        return colors[index];
      }
    );
  }
}
