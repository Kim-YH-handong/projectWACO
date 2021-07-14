import 'package:flutter/material.dart';

import 'dropdownbutton.dart';


bool state = false;

showAlertDialog(BuildContext context) {
  Widget cancelButton = FlatButton(onPressed: () {
    Navigator.of(context).pop();
  }, child: Text('Cancel'));
  Widget continueButton = FlatButton(onPressed: () {
    state = true;
  }, child: Text('Continue'));

  AlertDialog alert = AlertDialog(
      title: Text('확인'),
      content: Text('빨래를 시작하시겠습니까?'),
      actions: [
        cancelButton,
        continueButton,
      ]
  );

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      }
  );
}

AppBar buildAppBar() {
  return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      title: Container(
        width: 80.0,
        height: 40,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/logo1.png'),
            fit: BoxFit.fill,
          ),
        ),
      )
  );
}

Row buildTopMain(BuildContext context, String userName, String dorm) {
  return Row(
      children: <Widget> [
        SizedBox(
          width: 40.0,
        ),
        Text('안녕하세요',
          style: TextStyle(
            letterSpacing: 2.0,
            fontSize: 20.0,
          ),
        ),
        Text(userName,
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text('님',
          style: TextStyle(
            letterSpacing: 2.0,
            fontSize: 20.0,
          ),
        ),
        SizedBox(
          width: 100.0,
        ),
        buildDropdownButton(context, dorm, userName)
      ]
  );
}

