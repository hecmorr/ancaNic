import 'package:flutter/material.dart';

class Time extends StatelessWidget {
  int secondsPassed;
  Time(this.secondsPassed);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Time: $secondsPassed',
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
