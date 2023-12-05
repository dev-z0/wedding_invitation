import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';

class TopPhoto extends StatelessWidget {
  final String groom = '김대호';
  final String bride = '김지영';

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
    final dday = DateTime(2024, 2, 18);
    final today = DateTime.now();
    final difference = dday.difference(today).inDays;

    var ddayText = difference > 0 ? '결혼식 $difference일 전' : '';

    return Column(
      children: [
        _mainText(),
        SizedBox(height: 20),
        Text(
          '2024년 2월 18일 일요일 낮 12시 30분',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 5),
        Text(
          '엘블레스 다이아몬드홀',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 20),
        AutoSizeText(
          ddayText,
          style: TextStyle(fontSize: 14, color: Colors.black),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.75,
                      child: Image.asset('assets/images/1.jpg',
                          fit: BoxFit.fitWidth),
                    ),
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                            Color(0xFFFFFFFF).withOpacity(0.0),
                            Color(0xFFFFFFFF)
                          ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                _subText(context),
              ],
            )),
      ],
    );
  }
}
