import 'package:flutter/material.dart';
import 'package:practice/bethel/fifth_f.dart';
import 'package:practice/bethel/first_f.dart';
import 'package:practice/bethel/fourth_f.dart';
import 'package:practice/bethel/second_f.dart';
import 'package:practice/bethel/third_f.dart';

void signUpToMain(String nameUser, String studentID, var selectedDorm, var selectedFloor, BuildContext context){
  if(selectedDorm == '벧엘관'){
    if(selectedFloor == '1층'){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BethelFirstFloor(userName: nameUser,)),
      );
    }else if(selectedFloor == '2층'){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BethelSecondFloor(userName: nameUser,)),
      );
    }else if(selectedFloor == '3층'){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BethelThirdFloor(userName: nameUser,)),
      );
    }else if(selectedFloor == '4층'){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BethelFourthFloor(userName: nameUser,)),
      );
    }else if(selectedFloor == '5층'){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BethelFifthFloor(userName: nameUser,)),
      );
    }
  }
}