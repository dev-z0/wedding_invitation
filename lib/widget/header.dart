import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:url_launcher/url_launcher.dart';

class Header extends StatelessWidget {
  final List<Parent> _parents = getParents();

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
        ),
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
                children: _parents.map<Widget>((Parent info) {
                  return SimpleDialogOption(
                    onPressed: () => launchUrl(Uri.parse('tel:${info.phone}')),
                    child: Text('${info.relation} \u2022 ${info.name}',
                        textAlign: TextAlign.center),
                  );
                }).toList());
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
            _parentName(
                _parents[0].name, _parents[1].name, '아들', '대호', '01045902998'),
            SizedBox(height: 10),
            _parentName(
                _parents[2].name, _parents[3].name, ' 딸 ', '지영', '01056099732'),
            SizedBox(height: 30),
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

class Parent {
  Parent(this.name, this.relation, this.phone);
  String name;
  String relation;
  String phone;
}

List<Parent> getParents() {
  return [
    Parent('김길우', '신랑아버님', '01091206078'),
    Parent('유인숙', '신랑어머님', '01089112998'),
    Parent('김윤수', '신부아버님', '01022989732'),
    Parent('조영숙', '신부어머님', '01056699732'),
  ];
}
