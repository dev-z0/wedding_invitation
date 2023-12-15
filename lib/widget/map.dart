import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MapWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsetsDirectional.all(50.0),
        child: Column(children: [
          Text('오시는 길', style: TextStyle(fontSize: 18)),
          SizedBox(height: 20),
          Text('엘블레스 다이아몬드홀', style: TextStyle(fontSize: 20)),
          Text('서울 서초구 강남대로 213, 스포타임 지하1층', style: TextStyle(fontSize: 15)),
          SelectableText('02-526-0300', style: TextStyle(fontSize: 15)),
          SizedBox(height: 30),
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
