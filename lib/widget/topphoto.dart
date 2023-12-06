import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:auto_size_text/auto_size_text.dart';

class TopPhoto extends StatelessWidget {
  final String groom = '김대호';
  final String bride = '김지영';
  final DateTime dday = DateTime(2024, 2, 18, 12, 30);
  final String weddingHall = '엘블레스 다이아몬드홀';

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
    final today = DateTime.now();
    final difference = dday.difference(today).inDays;

    String diffDayText = difference > 0 ? '결혼식 $difference일 전' : '';
    String ddayText = DateFormat('yyyy년 MM월 dd일 EEE HH:mm').format(dday);

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
          weddingHall,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 20),
        AutoSizeText(
          diffDayText,
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
