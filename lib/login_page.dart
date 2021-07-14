import 'package:flutter/material.dart';
import 'package:practice/sign_up/make_account_page.dart';

import 'utils/colors.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: buildColumn(context),
    );
  }


  /*로고를 구성하는 함수이다. 숫자를 입력받고 그 숫자에 알맞는 이미지를 출력해준다.*/
  Widget logo(int a) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Image(
            alignment: Alignment.center,
            image: AssetImage(
              'assets/logo$a.png',
            ),
            width: 150,
            height: 75,
          ),
        ]
    );
  }

  Widget buildColumn(BuildContext context) {
    return Column(children: <Widget>[
      SizedBox(
        height: 241,
      ),
      logo(2),
      logo(1),
      SizedBox(
        height: 260.0,
      ),
      FlatButton(
        color: blue2,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SignUpPage()),
          );
        },
        height: 45,
        minWidth: 200,
        shape: StadiumBorder(),
        child: Text(
          '시작하기',
          style: TextStyle(
            fontSize: 18.0,
            color: Colors.white,
          ),
        ),
      ),
    ]);
  }
}