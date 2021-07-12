import 'package:flutter/material.dart';
import 'package:practice/box_for_use_unuse.dart';
import 'package:practice/dropdownbutton.dart';
import 'package:practice/gunjoki.dart';
import 'package:practice/setakki.dart';




class BethelSecondFloor extends StatelessWidget {

  final valueList = ['벧엘관 1층', '벧엘관 2층', '벧엘관 3층', '벧엘관 4층', '벧엘관 5층'];
  var selectedValue = '벧엘관 2층';

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
          Row(
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
                Text(' 하은',
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
                buildDropdownButton(context, '벧엘관 2층')
              ]
          ),
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
                ]
            ),
          ),
        ]
    );
  }


}
