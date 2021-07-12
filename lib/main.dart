import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '세탁어플',
      theme: ThemeData(
        backgroundColor: Colors.white,
      ),
      home: AnimatedSplashScreen(
        splash: Image.asset('assets/logo1.png'),
        nextScreen: LoginPage(),
        splashTransition: SplashTransition.fadeTransition,
      )
    );
  }
}


/*
* 나중에 칸 하나당 그림자 효과 넣고 싶으면
* card 사용 해야됨. container는 그림자를 발생시킬 수 있는
* 방법이 없다고 함.
* (1)FlatButton 누르면 Dialog 나오게 하는법
* WebSite: https://stackoverflow.com/questions/53844052/how-to-make-an-alertdialog-in-flutter
* (2)FlatButton 모양 바꾸는 법
* WebSite: https://stackoverflow.com/questions/50083390/create-a-button-with-rounded-border
* */