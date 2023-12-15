import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:url_launcher/url_launcher.dart';

class Header extends StatelessWidget {
  Widget _parentName(String father, mother, order, name, phoneNumber) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(father, style: TextStyle(fontSize: 15)),
        Text(' \u2022 ', style: TextStyle(fontSize: 15)),
        Text(mother, style: TextStyle(fontSize: 15)),
        Text('  의  $order  '),
        Text(name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Text('    \u2022\u2022\u2022 ', style: TextStyle(fontSize: 12)),
        IconButton(
          onPressed: () => launchUrl(Uri.parse('tel:$phoneNumber')),
          icon: Icon(Icons.call),
          iconSize: 15,
        )
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    Future<void> showContactDialog() async {
      await showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return SimpleDialog(
              title: const Text('혼주 연락처', textAlign: TextAlign.center),
              children: <Widget>[
                SimpleDialogOption(
                  onPressed: () => launchUrl(Uri.parse('tel:01091206078')),
                  child: const Text('신랑아버님 \u2022 김길우',
                      textAlign: TextAlign.center),
                ),
                SimpleDialogOption(
                  onPressed: () => launchUrl(Uri.parse('tel:01089112998')),
                  child: const Text('신랑어머님 \u2022 유인숙',
                      textAlign: TextAlign.center),
                ),
                SimpleDialogOption(
                  onPressed: () => launchUrl(Uri.parse('tel:01022989732')),
                  child: const Text('신부아버님 \u2022 김윤수',
                      textAlign: TextAlign.center),
                ),
                SimpleDialogOption(
                  onPressed: () => launchUrl(Uri.parse('tel:01056699732')),
                  child: const Text('신부어머님 \u2022 조영숙',
                      textAlign: TextAlign.center),
                ),
              ],
            );
          });
    }

    return Container(
        margin: EdgeInsetsDirectional.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              child: Image.asset(
                'assets/images/flower.png',
                fit: BoxFit.contain,
              ),
            ),
            AutoSizeText('초대합니다',
                style: TextStyle(
                    color: const Color.fromRGBO(41, 82, 56, 100),
                    fontWeight: FontWeight.bold,
                    fontSize: 18)),
            SizedBox(height: 30),
            AutoSizeText(
              '2월의 어느 멋진 날,\n\n저희 두 사람이 이제 믿음과 사랑으로\n\n한 길을 가고자 합니다.\n\n새로운 인생을 시작하는 자리에\n\n함께해 주시기 바랍니다.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 50),
            _parentName('김길우', '유인숙', '아들', '대호', '01045902998'),
            SizedBox(height: 10),
            _parentName('김윤수', '조영숙', ' 딸 ', '지영', '01056099732'),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: showContactDialog,
              child: const Text(
                '혼주에게 연락하기',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ));
  }
}
