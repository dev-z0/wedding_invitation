import 'package:flutter/material.dart';
import 'package:wedding_invitation/widget/account.dart';
import 'package:wedding_invitation/widget/calendar.dart';
import 'package:wedding_invitation/widget/gallery.dart';
import 'package:wedding_invitation/widget/header.dart';
import 'package:wedding_invitation/widget/topphoto.dart';
import 'package:wedding_invitation/widget/map.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Align(
            alignment: Alignment.center,
            child: Container(
              color: Color(0xFFFFFFFF),
              width: 420,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TopPhoto(),
                    Header(),
                    Calendar(),
                    //Gallery(),
                    MapWidget(),
                    AccountInfo(),
                    //Share(),
                    //FooterPhoto()
                  ],
                ),
              ),
            )));
  }
}
