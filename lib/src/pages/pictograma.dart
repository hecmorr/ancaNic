import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/picto_grid.dart';
import '../widgets/picto_title.dart';

class Pictograma extends StatefulWidget {
  const Pictograma({Key? key}) : super(key: key);

  @override
  State<Pictograma> createState() => _PictogramaState();
}

class _PictogramaState extends State<Pictograma> {
  var pieces = [0, 1, 2, 3, 4, 5, 6, 7, 8];
  var images = [
    'assets/anca.png',
    'assets/anca2.png',
    'assets/avatar.jpg',
    'assets/X0.png',
    'assets/puzzle2.jpg',
    'assets/pictograma.jpg',
    'assets/galeria.jpg',
    'assets/dientes.png'
  ];
  bool isActive = false;

  @override
  void initState() {
    super.initState();
    pieces.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: size.height,
          width: double.infinity,
          color: Colors.lightBlue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const SizedBox(height: 40),
              const PictoTitle(
                title: 'Pictograma',
              ),
              const SizedBox(height: 100),
              Flexible(child: PictoGrid(pieces, size, clickGrid, images)),
            ],
          ),
        ),
      ),
    );
  }

  void clickGrid(index) {
    if (index - 1 >= 0 && pieces[index - 1] == 0 && index % 3 != 0 ||
        index + 1 < 9 && pieces[index + 1] == 0 && (index + 1) % 3 != 0 ||
        index - 3 >= 0 && pieces[index - 3] == 0 ||
        index + 3 < 9 && pieces[index + 3] == 0) {
      setState(() {
        pieces[pieces.indexOf(0)] = pieces[index];
        pieces[index] = 0;
      });
    }
  }

  bool isSorted(List list) {
    int prev = list.first;
    for (var i = 1; i < list.length; i++) {
      int next = list[i];
      if (prev > next) return false;
      prev = next;
    }
    return true;
  }

  void checkWin() {
    if (isSorted(pieces)) {
      isActive = false;
      showDialog(
          context: context,
          builder: (_) {
            return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.00),
              ),
              child: Container(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [Text('You Win!!!')]),
                ),
              ),
            );
          });
    }
  }
}
