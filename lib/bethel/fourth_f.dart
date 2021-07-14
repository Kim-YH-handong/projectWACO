import 'package:flutter/material.dart';
import 'package:practice/box_for_use_unuse.dart';
import 'package:practice/dropdownbutton.dart';
import 'package:practice/gunjoki.dart';

import '../setakki.dart';




class BethelFourthFloor extends StatelessWidget {
  BethelFourthFloor({required this.userName});

  String userName;
  final valueList = ['벧엘관 1층', '벧엘관 2층', '벧엘관 3층', '벧엘관 4층', '벧엘관 5층'];
  var selectedValue = '벧엘관 4층';

  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: this.buildColumn(context),
    );
  }

  @override
  Widget buildColumn(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          SizedBox(
            height: 10.0,
          ),
          buildTopMain(context,userName,'벧엘관 4층'),
          SizedBox(
            height: 100.0,
          ),
          Text('      세탁기',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              )
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 200.0,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget> [
                  SizedBox(
                    width: 35.0,
                  ),
                  BuildSetakki(1),
                  SizedBox(
                    width: 35.0,
                  ),
                  BuildSetakki(2),
                  SizedBox(
                    width: 35.0,
                  ),
                  BuildSetakki(3),
                  SizedBox(
                    width: 35.0,
                  ),
                  BuildSetakki(4),
                ]
            ),
          ),
          SizedBox(
            height: 60.0,
          ),
          Text('      건조기',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              )
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 200.0,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget> [
                  SizedBox(
                    width: 35.0,
                  ),
                  BuildGunjoki(1),
                  SizedBox(
                    width: 35.0,
                  ),
                  BuildGunjoki(2),
                  SizedBox(
                    width: 35.0,
                  ),
                  BuildGunjoki(3),
                  SizedBox(
                    width: 35.0,
                  ),
                  BuildGunjoki(4),

                ]
            ),
          ),
        ]
    );
  }


}
