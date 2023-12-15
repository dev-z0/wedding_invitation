import 'package:flutter/material.dart';
import 'package:flutter_app_icons/flutter_app_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:wedding_invitation/home.dart';
import 'package:meta_seo/meta_seo.dart';
import 'package:flutter/foundation.dart';

void main() {
  if (kIsWeb) {
    MetaSEO().config();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      MetaSEO meta = MetaSEO();
      // add meta seo data for web app as you want
      meta.ogTitle(ogTitle: '대호&지영 결혼합니다');
      meta.description(description: '2024년 02월 18일');
      meta.ogImage(
          ogImage:
              'https://dev-z0.github.io/wedding_invitation/assets/assets/images/10.jpg');
      meta.author(author: 'z0');
      meta.propertyContent(
          property: 'og:url',
          content: 'https://dev-z0.github.io/wedding_invitation/');
    }

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
