import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PictoGrid extends StatelessWidget {
  var pieces = [];
  var images = [
    'assets/pasta.jpg',
    'assets/cepillo.jpg',
    'assets/dientes.png',
    'assets/agua.jpg',
    'assets/lavar_cepillo.jpg',
    'assets/poner_enjuague.jpg',
    'assets/enjuagarse.jpg',
    'assets/escupir.jpg'
  ];
  // ignore: prefer_typing_uninitialized_variables
  var size;
  final Function clickGrid;

  PictoGrid(this.size, this.clickGrid, this.pieces, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = size.height;

    return SizedBox(
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
                      shadowColor: Colors.black,
                      primary: Colors.blue.shade100,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    child: Container(
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          alignment: Alignment.center,
                          fit: BoxFit.fill,
                          image: AssetImage('${images[pieces[index] - 1]}'),
                        ),
                      ),
                    ),
                  )
                : const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
