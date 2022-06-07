import 'package:flutter/material.dart';

import 'grid_button.dart';

class PictoGrid extends StatelessWidget {
  var pieces = [];
  var images = [];
  var size;
  Function clickGrid;

  PictoGrid(this.images, this.size, this.clickGrid, this.pieces);

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
                    child: Text('${pieces[index]}'),
                  )
                : SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
