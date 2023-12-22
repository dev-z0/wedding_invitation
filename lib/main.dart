import 'package:flutter/material.dart';
import 'package:wedding_invitation/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '대호&지영 결혼합니다',
      theme: ThemeData(
        fontFamily: 'Plex',
        scaffoldBackgroundColor: Color.fromARGB(187, 156, 196, 247),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(41, 82, 56, 100),
              textStyle: TextStyle(color: Color(0xFFFFFFFF))),
        ),
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
