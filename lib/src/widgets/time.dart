import 'package:flutter/material.dart';

class Time extends StatelessWidget {
  final int secondsPassed;
  const Time(this.secondsPassed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Time: $secondsPassed',
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
