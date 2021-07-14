import 'package:flutter/material.dart';
import 'package:practice/bethel/first_f.dart';
import 'package:practice/bethel/second_f.dart';
import 'package:practice/bethel/third_f.dart';
import 'package:practice/bethel/fourth_f.dart';
import 'package:practice/bethel/fifth_f.dart';

DropdownButton<String> buildDropdownButton(BuildContext context, var selectedValue, String userName) {
  final valueList = ['벧엘관 1층', '벧엘관 2층', '벧엘관 3층', '벧엘관 4층', '벧엘관 5층'];

  return DropdownButton(
    value: selectedValue,
    items: valueList.map(
          (value) {
        return DropdownMenuItem(
          value: value,
          child: Text(value),
        );
      },
    ).toList(),
    onChanged: (value){
      if(value == '벧엘관 1층'){
        selectedValue = '벧엘관 1층';
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BethelFirstFloor(userName: userName,)),
        );
      }else if(value == '벧엘관 2층') {
        selectedValue = '벧엘관 2층';
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BethelSecondFloor(userName: userName,)),
        );
      }else if(value == '벧엘관 3층') {
        selectedValue = '벧엘관 3층';
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BethelThirdFloor(userName: userName,)),
        );
      }else if(value == '벧엘관 4층') {
        selectedValue = '벧엘관 4층';
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BethelFourthFloor(userName: userName,)),
        );
      }else if(value == '벧엘관 5층') {
        selectedValue = '벧엘관 5층';
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BethelFifthFloor(userName: userName,)),
        );
      }
    },
  );
}