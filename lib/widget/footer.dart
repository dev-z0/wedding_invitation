import 'package:flutter/material.dart';

class FooterPhoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SizedBox(
          child: Image.asset('assets/images/footer.jpg', fit: BoxFit.fitWidth),
        ),
        Container(
          height: 100,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xFFFFFFFF),
            Color(0xFFFFFFFF).withOpacity(0.0),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        ),
      ],
    );
  }
}
