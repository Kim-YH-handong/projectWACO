import 'package:flutter/material.dart';


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
        width: 100.0,
        height: 45.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/logo1.png'),
            fit: BoxFit.fill,
          ),
        ),
      )
  );
}

