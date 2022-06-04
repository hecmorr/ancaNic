import 'package:flutter/material.dart';

class GameCard extends StatelessWidget {
  const GameCard(
      {Key? key,
      required this.title,
      required this.color,
      required this.textColor,
      required this.image})
      : super(key: key);

  final String title;
  final Color color;
  final Color textColor;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: color,
        elevation: 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              image,
              height: 50,
              width: 50,
            ),
            const SizedBox(height: 10),
            Text(title)
          ],
        ));
  }
}
