import 'package:flutter/material.dart';

class GameCard extends StatelessWidget {
  const GameCard(
      {Key? key,
      required this.title,
      required this.color,
      required this.textColor})
      : super(key: key);

  final String title;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: color,
      elevation: 5,
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              color: textColor, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
  }
}
