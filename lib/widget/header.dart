import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

class Header extends StatelessWidget {
  Widget _parentName(String father, mother, order, name) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(father, style: TextStyle(fontSize: 15)),
        Text(' \u2022 ', style: TextStyle(fontSize: 15)),
        Text(mother, style: TextStyle(fontSize: 15)),
        Text('  의 $order  '),
        Text(name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsetsDirectional.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              child: Image.asset(
                'assets/images/flower.png',
                fit: BoxFit.contain,
              ),
            ),
            AutoSizeText('초대합니다',
                style: TextStyle(
                    color: const Color.fromRGBO(41, 82, 56, 100),
                    fontWeight: FontWeight.bold,
                    fontSize: 18)),
            SizedBox(height: 30),
            AutoSizeText(
              '2월의 어느 멋진 날,\n\n저희 두 사람이 이제 믿음과 사랑으로\n\n한 길을 가고자 합니다.\n\n새로운 인생을 시작하는 자리에\n\n함께해 주시기 바랍니다.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 50),
            _parentName('김길우', '유인숙', '아들', '대호'),
            SizedBox(height: 20),
            _parentName('김윤수', '조영숙', '딸', '지영'),
            SizedBox(height: 50),
            AutoSizeText('2024년 2월 18일 일요일\n낮 12시 30분',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: const Color.fromRGBO(41, 82, 56, 100),
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
          ],
        ));
  }
}
