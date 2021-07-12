import 'package:flutter/material.dart';
import 'package:practice/bethel/first_f.dart';
import 'package:practice/box_for_use_unuse.dart';

class BuildGunjoki extends StatefulWidget {
  int number;

  BuildGunjoki(this.number);

  @override
  _BuildGunjokiState createState() => _BuildGunjokiState();
}

class _BuildGunjokiState extends State<BuildGunjoki> {
  bool state = true;

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
        content: Text('건를 시작하시겠습니까?'),
        actions: [
          cancelButton,
          continueButton,
        ]);

    AlertDialog alert2 = AlertDialog(
        title: Text('확인'),
        content: Text('건조를 끝내겠습니까?'),
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
          color: Colors.lightBlue[50],
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
          image: AssetImage('assets/사용중인 건조기.png'),
          fit: BoxFit.fill,
        ),
      );
    else
      return BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/사용가능 건조기.png'),
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
          color: Colors.grey,
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
              color: Colors.blueAccent,
            )),
        shape: RoundedRectangleBorder(
            side: BorderSide(
                color: Colors.blue, width: 1, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(50)),
      );
    else
      return FlatButton(
        minWidth: 107,
        height: 28,
        color: Colors.blueAccent,
        onPressed: () {
          showAlertDialog(context);
        },
        child: Text('건조하기',
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
