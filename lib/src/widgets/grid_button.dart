import 'package:flutter/material.dart';

class GridButton extends StatelessWidget {
  final Function click;
  final String text;
  const GridButton({Key? key, required this.click, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: click(),
      style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
      child: Text(text),
    );
  }
}
