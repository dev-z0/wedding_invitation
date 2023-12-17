import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wedding_invitation/model/wedding_info.dart';

class TopPhoto extends StatelessWidget {
  Widget _mainText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(groom, style: TextStyle(fontSize: 20)),
        SizedBox(width: 6),
        Text('그리고', style: TextStyle(fontSize: 15)),
        SizedBox(width: 6),
        Text(bride, style: TextStyle(fontSize: 20))
      ],
    );
  }

  Widget _subText(BuildContext context) {
    String ddayText = DateFormat('yyyy년 MM월 dd일 EEE HH:mm').format(ddayTime);

    return Column(
      children: [
        _mainText(),
        SizedBox(height: 20),
        Text(
          ddayText,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 5),
        Text(
          weddingHall.name,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              child: Image.asset('assets/images/1.jpg',
                  fit: BoxFit.fitWidth, scale: 0.7),
            ),
            Container(
              height: 150,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(0xFFFFFFFF).withOpacity(0.0),
                Color(0xFFFFFFFF)
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            ),
          ],
        ),
        SizedBox(height: 40),
        _subText(context),
      ],
    );
  }
}
