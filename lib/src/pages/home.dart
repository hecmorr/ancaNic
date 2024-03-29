import 'package:anca/src/widgets/category_game.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade900,
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
                      image: 'assets/puzzle.jpg',
                      color: Colors.grey.shade300,
                      textColor: Colors.white),
                  GameCard(
                      title: 'X 0',
                      color: Colors.yellow.shade700,
                      image: 'assets/juego.jpg',
                      textColor: Colors.white),
                  const GameCard(
                      title: 'Fotos',
                      color: Colors.lightBlue,
                      image: 'assets/camera.jpg',
                      textColor: Colors.white),
                  GameCard(
                      title: 'Galeria',
                      color: Colors.blue.shade400,
                      image: 'assets/gallery.jpg',
                      textColor: Colors.black87),
                  GestureDetector(
                    child: GameCard(
                        title: 'Pictograma',
                        image: 'assets/actividades.jpg',
                        color: Colors.orange.shade700,
                        textColor: Colors.black87),
                    onTap: () => Navigator.pushNamed(context, 'pictograma'),
                  ),
                  GestureDetector(
                    child: const GameCard(
                        title: 'Avatar',
                        color: Colors.grey,
                        image: 'assets/avatar.jpg',
                        textColor: Colors.white),
                    onTap: () => Navigator.pushNamed(context, 'profile'),
                  ),
                ]),
          ),
        ]),
      ),
    );
  }
}
