import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice/bethel/first_f.dart';
import 'package:practice/box_for_use_unuse.dart';
import 'package:practice/sign_up/sign_up_drop_menu.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController name = TextEditingController();
  TextEditingController studentID = TextEditingController();
  late String nameInput;
  late int studentIDInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 62,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'SIGN UP',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 36,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 26,
                ),
                buildText('이름'),
                inputContainer(name, '예)김길동', TextInputType.name),
                SizedBox(
                  height: 28,
                ),
                buildText('학번'),
                inputContainer(studentID, '학번', TextInputType.number),
                SizedBox(
                  height: 32,
                ),
                Row(children: <Widget>[
                  buildText('거주호관'),
                  SizedBox(
                    width: 120,
                  ),
                  buildText('층수'),
                ]),
                DropDownMenuSignUP(),
                SizedBox(
                  height: 227,
                ),
                Row(
                  children: <Widget> [
                  ],
                ),
                FlatButton(
                  color: Colors.indigo[300],
                  onPressed: () {

                      showNullSnackBar(context);

                  },
                  height: 45,
                  minWidth: 200,
                  shape: StadiumBorder(),
                  child: Text(
                    '회원가입',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
        )
    );
  }

  Row buildText(String text) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 30,
        ),
        Text(
          '$text',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        )
      ],
    );
  }

  Container inputContainer(
      TextEditingController input, String labelText, TextInputType type) {
    return Container(
      padding: EdgeInsets.all(10),
      child: TextField(
        controller: input,
        decoration: InputDecoration(
            border: OutlineInputBorder(), labelText: '$labelText'),
        keyboardType: type,
      ),
    );
  }
}

void showNullSnackBar(BuildContext context){
  Scaffold.of(context).showSnackBar(
    SnackBar(content:
      Text('이름과 학번을 입력해주세요.',
      textAlign: TextAlign.center,),
    duration: Duration(seconds: 2),
    backgroundColor: Colors.blue,
    )
  );
}
