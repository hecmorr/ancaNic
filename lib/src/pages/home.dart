import 'package:anca/src/model/categorie_info.dart';
import 'package:anca/src/model/category_game.dart';
import 'package:anca/src/model/example_categories.dart';
import 'package:anca/src/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade900.withOpacity(0.7),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue.shade200,
          appBar: AppBar(
            backgroundColor: Colors.blue.shade900,
            title: const Text('AncaNic'),
            centerTitle: true,
          ),
          body: GridView.count(
              padding: const EdgeInsets.all(5),
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 10,
              children: [
                GameCard(
                    title: 'Rompecabezas',
                    image: 'assets/puzzle.png',
                    color: Colors.blue.shade900,
                    textColor: Colors.white),
                GameCard(
                    title: 'X 0',
                    color: Colors.orange.shade700,
                    image: 'assets/X0.png',
                    textColor: Colors.white),
                const GameCard(
                    title: 'Fotos',
                    color: Colors.lightBlue,
                    image: 'assets/photo.jpg',
                    textColor: Colors.white),
                const GameCard(
                    title: 'Galeria',
                    color: Colors.yellow,
                    image: 'assets/galeria.jpg',
                    textColor: Colors.black87),
                const GameCard(
                    title: 'Pictograma',
                    image: 'assets/pictograma.jpg',
                    color: Colors.grey,
                    textColor: Colors.black87),
                GameCard(
                    title: 'Avatar',
                    color: Colors.blue.shade700,
                    image: 'assets/avatar.jpg',
                    textColor: Colors.white),
              ]),
        ),
      ),
    );
  }
}
