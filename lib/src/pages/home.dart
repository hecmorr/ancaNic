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
        backgroundColor: Colors.blue.shade200,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Text('AncaNic'),
          centerTitle: true,
        ),
        body: GridView.count(
            padding: EdgeInsets.all(5),
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 10,
            children: [
              GameCard(
                  title: 'X 0',
                  color: Colors.orange.shade700,
                  textColor: Colors.white),
              GameCard(
                  title: 'Rompecabezas',
                  color: Colors.blue.shade900,
                  textColor: Colors.white),
              const GameCard(
                  title: 'Fotos',
                  color: Colors.lightBlue,
                  textColor: Colors.white),
              const GameCard(
                  title: 'Galeria',
                  color: Colors.yellow,
                  textColor: Colors.black87),
              const GameCard(
                  title: 'Pictograma',
                  color: Colors.grey,
                  textColor: Colors.black87),
              GameCard(
                  title: 'Pizarra',
                  color: Colors.blue.shade700,
                  textColor: Colors.white),
            ]),
      ),
    );
  }
}
