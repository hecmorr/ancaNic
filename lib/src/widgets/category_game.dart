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
    return Container(
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color,
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                blurRadius: 10,
                offset: Offset(0, 3),
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              image,
              height: 80,
              width: 80,
            ),
            const SizedBox(height: 10),
            Text(title)
          ],
        ));
  }
}
