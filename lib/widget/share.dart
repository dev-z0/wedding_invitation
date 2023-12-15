import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Share extends StatelessWidget {
  final String webLink = 'https://dev-z0.github.io/wedding_invitation/';
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsetsDirectional.all(20.0),
        child: Column(children: [
          Divider(
            height: 1,
          ),
          SizedBox(height: 30),
          _shareWebLink(context),
          SizedBox(height: 30),
        ]));
  }

  Widget _shareWebLink(BuildContext context) {
    Future<void> copyUrl() async {
      await Clipboard.setData(ClipboardData(text: webLink)).then(
          (_) => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text(
                '주소가 복사되었습니다.',
                textAlign: TextAlign.center,
              ))));
    }

    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: copyUrl,
          icon: Icon(Icons.link),
        ),
        TextButton(
          onPressed: copyUrl,
          child: const Text(
            '청첩장 주소 복사하기',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    ));
  }
}
