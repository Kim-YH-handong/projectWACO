import 'package:flutter/material.dart';
import 'utils/colors.dart';

class BuildSetakki extends StatefulWidget {
  int number;

  BuildSetakki(this.number);

  @override
  _BuildSetakkiState createState() => _BuildSetakkiState();
}

class _BuildSetakkiState extends State<BuildSetakki> {
  bool state = true;
//무언가 변화를 줄때는 setState(() {내용})을 사용하면 된다.
  showAlertDialog(BuildContext context) {
    Widget cancelButton = FlatButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text('Cancel'));
    Widget continueButton = FlatButton(
        onPressed: () => setState(() {
              state = false;
              Navigator.of(context).pop();
            }),
        child: Text('Continue'));
    Widget continueTrueButton = FlatButton(
        onPressed: () => setState(() {
          state = true;
          Navigator.of(context).pop();
        }),
        child: Text('Continue'));

      AlertDialog alert1 = AlertDialog(
          title: Text('확인'),
          content: Text('빨래를 시작하시겠습니까?'),
          actions: [
            cancelButton,
            continueButton,
          ]);

      AlertDialog alert2 = AlertDialog(
          title: Text('확인'),
          content: Text('빨래를 끝내겠습니까?'),
          actions: [
            cancelButton,
            continueTrueButton,
          ]);

    showDialog(
        context: context,
        builder: (BuildContext context) {
          if(state == true){
            return alert1;
          } else{
            return alert2;
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: blue1,
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      width: 140,
      height: 230,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            Text('${widget.number}',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              height: 13.0,
            ),
            Container(
              width: 75,
              height: 89.37,
              decoration: this.checkBoxDeco(),
            ),
            checkText(),
            checkButton(context),
          ]),
    );
  }

  BoxDecoration checkBoxDeco() {
    if (state == false)
      return BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/사용중인 세탁기.png'),
          fit: BoxFit.fill,
        ),
      );
    else
      return BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/사용가능 세탁기.png'),
          fit: BoxFit.fill,
        ),
      );
  }

  Text checkText() {
    if (state == false)
      return Text(
        '사용불가',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.grey,
          letterSpacing: 2.0,
          fontSize: 12,
        ),
      );
    else
      return Text(
        '사용가능',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: blue3,
          letterSpacing: 2.0,
          fontSize: 12,
        ),
      );
  }

  FlatButton checkButton(BuildContext context) {
    if (state == false)
      return FlatButton(
        minWidth: 107,
        height: 28,
        color: Colors.white,
        onPressed: () {
          showAlertDialog(context);
        },
        child: Text('확인하기',
            style: TextStyle(
              fontSize: 14.0,
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
              color: blue3,
            )),
        shape: RoundedRectangleBorder(
            side: BorderSide(
                color: blue3, width: 1, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(50)),
      );
    else
      return FlatButton(
        minWidth: 107,
        height: 28,
        color: blue3,
        onPressed: () {
          showAlertDialog(context);
        },
        child: Text('세탁하기',
            style: TextStyle(
              fontSize: 14.0,
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
        shape: RoundedRectangleBorder(
            side: BorderSide(
                color: Colors.blue, width: 1, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(50)),
      );
  }
}
