import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsetsDirectional.all(50.0),
        child: Column(children: [
          Image.asset('assets/images/elbless_map.jpg', fit: BoxFit.fitWidth),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () => launchUrl(Uri.parse(
                'https://map.naver.com/p/entry/place/37688101?c=15.00,0,0,0,dh')),
            child: const Text(
              '지도로 자세히 보기',
              style: TextStyle(color: Colors.white),
            ),
          )
        ]));
  }
}
