import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wedding_invitation/model/account_info.dart';

class AccountInfo extends StatelessWidget {
  final List<Account> _groomAccounts = getGroomAccounts();
  final List<Account> _brideAccounts = getBrideAccounts();

  @override
  Widget build(BuildContext context) {
    Future<void> showGroomAccountDialog() async {
      await showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return _accountDialog(context, _groomAccounts);
          });
    }

    Future<void> showBrideAccountDialog() async {
      await showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return _accountDialog(context, _brideAccounts);
          });
    }

    return Container(
        margin: EdgeInsetsDirectional.all(20.0),
        child: Column(children: [
          Text('마음 전하실 곳', style: TextStyle(fontSize: 18)),
          SizedBox(height: 15),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 35,
            child: TextButton(
              onPressed: showGroomAccountDialog,
              style: TextButton.styleFrom(backgroundColor: Color(0xFFF2F4F7)),
              child: const Text(
                '신랑측 마음 전하실 곳',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 35,
            child: TextButton(
              onPressed: showBrideAccountDialog,
              style: TextButton.styleFrom(backgroundColor: Color(0xFFF2F4F7)),
              child: const Text(
                '신부측 마음 전하실 곳',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          SizedBox(height: 30),
        ]));
  }

  Widget _accountDialog(BuildContext context, List<Account> accounts) {
    return SimpleDialog(
        title: const Text('계좌번호 복사하기', textAlign: TextAlign.center),
        children: accounts.map<Widget>((Account info) {
          return SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context, 'Copy');
              Clipboard.setData(ClipboardData(text: '${info.bank} ${info.num}'))
                  .then((_) =>
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text(
                        '계좌번호가 복사되었습니다.',
                        textAlign: TextAlign.center,
                      ))));
            },
            child: Text('${info.depositor} \u2022 ${info.bank}',
                textAlign: TextAlign.center),
          );
        }).toList());
  }
}
