import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'sign_up_to_main.dart';
import 'package:practice/box_for_use_unuse.dart';
import 'package:practice/sign_up/sign_up_drop_menu.dart';

import '../utils/colors.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController name = TextEditingController();
  TextEditingController studentID = TextEditingController();
  DropDownMenuSignUP menuSignUP = new DropDownMenuSignUP();
  bool typedIn = false;

  @override
  Widget build(BuildContext context) {
    String nameInput;
    int studentIDInput;
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
                menuSignUP,
                SizedBox(
                  height: 227,
                ),
                buildFlatButton(),
              ],
            )
        )
    );
  }

  FlatButton buildFlatButton() {
    if(typedIn){
      return FlatButton(
        color: blue2,
        onPressed: () {
          String nameUser = name.text;
          String studentIDUser = studentID.text;
          signUpToMain(nameUser, studentIDUser,menuSignUP.selectedDorm, menuSignUP.selectedFloor, context);
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
      );
    }
    else{
      return FlatButton(
        color: Colors.white,
        onPressed: () {},
        height: 45,
        minWidth: 200,
        shape: RoundedRectangleBorder(
            side: BorderSide(
                color: blue2, width: 1, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(50)),
        child: Text(
          '회원가입',
          style: TextStyle(
            fontSize: 18.0,
            color: blue2,
          ),
        ),
      );
    }
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

  Container inputContainer(TextEditingController input, String labelText, TextInputType type) {
    return Container(
      padding: EdgeInsets.all(10),

      child: Theme(
        data: ThemeData(
          primaryColor: Color(0xffB0C4FF),
          primaryColorDark: Color(0xffB0C4FF),
        ),
        child: TextField(
          onChanged: (value){
            setState(() {
              if(name.text.isNotEmpty && studentID.text.isNotEmpty)
                typedIn = true;
              else
                typedIn = false;
            });
          },
          controller: input,
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '$labelText'),
          keyboardType: type,
        ),
      ),
    );
  }
}

