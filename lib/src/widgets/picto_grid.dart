import 'package:flutter/material.dart';

import 'grid_button.dart';

class PictoGrid extends StatelessWidget {
  var pieces = [];
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
  var size;
  Function clickGrid;

  PictoGrid(this.size, this.clickGrid, this.pieces);

  @override
  Widget build(BuildContext context) {
    final height = size.height;
    return Container(
      height: height * 0.90,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5),
          itemCount: pieces.length,
          itemBuilder: (context, index) {
            return pieces[index] != 0
                ? ElevatedButton(
                    onPressed: () {
                      clickGrid(index);
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      primary: Colors.red.shade200,
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    child: Image.asset(
                      '${images[pieces[index] - 1]}',
                      fit: BoxFit.cover,
                    ),
                  )
                : SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
