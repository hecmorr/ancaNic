import 'package:flutter/material.dart';

class PictoTitle extends StatelessWidget {
  const PictoTitle({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40));
  }
}
