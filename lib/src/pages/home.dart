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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade800,
        body: Column(children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 10),
            height: 100,
            width: 100,
            child: Image.asset('assets/anca2.png'),
          ),
          const SizedBox(height: 5),
          Flexible(
            child: GridView.count(
                padding: const EdgeInsets.all(5),
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 10,
                children: [
                  GameCard(
                      title: 'Rompecabezas',
                      image: 'assets/puzzle2.jpg',
                      color: Colors.grey.shade300,
                      textColor: Colors.white),
                  GameCard(
                      title: 'X 0',
                      color: Colors.yellow.shade700,
                      image: 'assets/X0.png',
                      textColor: Colors.white),
                  const GameCard(
                      title: 'Fotos',
                      color: Colors.lightBlue,
                      image: 'assets/photo.jpg',
                      textColor: Colors.white),
                  GameCard(
                      title: 'Galeria',
                      color: Colors.blue.shade400,
                      image: 'assets/galeria.jpg',
                      textColor: Colors.black87),
                  GestureDetector(
                    child: GameCard(
                        title: 'Pictograma',
                        image: 'assets/pictograma.jpg',
                        color: Colors.orange.shade700,
                        textColor: Colors.black87),
                    onTap: () => Navigator.pushNamed(context, 'pictograma'),
                  ),
                  const GameCard(
                      title: 'Avatar',
                      color: Colors.grey,
                      image: 'assets/avatar.jpg',
                      textColor: Colors.white),
                ]),
          ),
        ]),
      ),
    );
  }
}
