import 'package:flutter/material.dart';
import 'package:wedding_invitation/model/photo.dart';

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void myDialog(int itemIndex) {
      showDialog(
        context: context,
        builder: (context) {
          return Dialog.fullscreen(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.75,
                  child: Image.asset(photoItems[itemIndex].imageUrl),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.close),
                )
              ],
            ),
          );
        },
      );
    }

    Widget photoCell(int itemIndex) {
      return GestureDetector(
          onTap: () {
            myDialog(itemIndex);
          },
          child: Image.asset(photoItems[itemIndex].imageUrl,
              fit: BoxFit.cover, height: 120));
    }

    return Container(
      margin: EdgeInsetsDirectional.all(20.0),
      child: Column(
        children: [
          Text('Gallery', style: TextStyle(fontSize: 18)),
          SizedBox(height: 20),
          Table(
              border:
                  TableBorder.all(color: const Color(0xFFFFFFFF), width: 10),
              children: [
                TableRow(children: [
                  photoCell(1),
                  photoCell(2),
                  photoCell(3),
                ]),
                TableRow(children: [
                  photoCell(4),
                  photoCell(5),
                  photoCell(6),
                ]),
                TableRow(children: [
                  photoCell(7),
                  photoCell(8),
                  photoCell(9),
                ]),
                TableRow(children: [
                  photoCell(10),
                  photoCell(11),
                  photoCell(12),
                ]),
              ]),
        ],
      ),
    );
  }
}
