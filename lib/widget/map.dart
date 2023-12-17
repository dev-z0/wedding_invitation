import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wedding_invitation/model/wedding_info.dart';

class MapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsetsDirectional.all(50.0),
        child: Column(children: [
          Text('오시는 길', style: TextStyle(fontSize: 18)),
          SizedBox(height: 20),
          Text(weddingHall.name, style: TextStyle(fontSize: 20)),
          Text(
            weddingHall.address,
            style: TextStyle(fontSize: 15),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          SelectableText(weddingHall.tel, style: TextStyle(fontSize: 14)),
          SizedBox(height: 30),
          Image.asset(weddingHall.image, fit: BoxFit.fitWidth),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () => launchUrl(Uri.parse(weddingHall.url)),
            child: const Text(
              '지도로 자세히 보기',
              style: TextStyle(color: Colors.white),
            ),
          )
        ]));
  }
}
