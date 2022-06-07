import 'package:flutter/material.dart';

class GridButton extends StatelessWidget {
  Function click;
  String text;
  GridButton({required this.click, required this.text});

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
