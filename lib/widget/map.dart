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
                'https://map.kakao.com/?urlX=507728&urlY=1106480&urlLevel=3&itemId=607282159&q=%EC%97%98%EB%B8%94%EB%A0%88%EC%8A%A4&map_type=TYPE_MAP')),
            child: const Text('지도로 자세히 보기',
                style: TextStyle(color: Color(0xFFFFFFFF))),
          ),
        ]));
  }
}
