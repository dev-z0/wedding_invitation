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
      title: '대호&지영 결혼식에 초대합니다',
      theme: ThemeData(
        fontFamily: 'Plex',
        scaffoldBackgroundColor: Color.fromARGB(188, 132, 169, 242),
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
