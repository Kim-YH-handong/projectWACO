import 'package:flutter/material.dart';


class DropDownMenuSignUP extends StatefulWidget {
  _DropDownMenuSignUPState menuDrop = new _DropDownMenuSignUPState();
  get selectedDorm => menuDrop.selectedDorm;
  get selectedFloor => menuDrop.selectedFloor;
  @override
  _DropDownMenuSignUPState createState() => menuDrop;
}

class _DropDownMenuSignUPState extends State<DropDownMenuSignUP> {
  final dormList = ['창조관', '벧엘관', '은혜관'];
  final floorBethel = ['1층', '2층', '3층', '4층', '5층', '6층'];
  final floorGrace = ['1층', '2층', '3층', '4층', '5층'];
  final floorCreation = ['1층', '2층', '3층', '4층'];
  var selectedDorm = '창조관';
  var selectedFloor;

  @override
  Widget build(BuildContext context) {
    return Row(
        children: <Widget> [
          SizedBox(
            width: 10,
          ),
          Container(
            width: 187,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(
                  color: Color(0xffB0C4FF),
                  style: BorderStyle.solid,
                  width: 0.800),
            ),
            child: buildDormMenu(),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 187,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(
                  color: Color(0xffB0C4FF),
                  style: BorderStyle.solid,
                  width: 0.800),
            ),
            child: buildFloorDorm(selectedDorm),
          ),
        ]
    );
  }

  DropdownButton<String> buildDormMenu() {
    return DropdownButton(
              value: selectedDorm,
              items: dormList.map((value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value, textAlign: TextAlign.right,),
                );
              }).toList(),
            onChanged: (value){
              if(value == '은혜관'){
                setState(() {
                  selectedDorm = '은혜관';
                  selectedFloor = '1층';
                  //floorMenu = (List) as List<DropdownButton>;buildFloorMenu2(floorGrace);
                });
              }else if(value == '벧엘관') {
                setState(() {
                  selectedDorm = '벧엘관';
                  selectedFloor = '1층';
                  //floorMenu = (List) as List<DropdownButton>;buildFloorMenu2(floorBethel);
                });
              }else if(value == '창조관') {
                setState(() {
                  selectedDorm = '창조관';
                  selectedFloor = '1층';
                  //floorMenu = (List) as List<DropdownButton>;buildFloorMenu2(floorCreation);
                });
              }
            },);
  }

  DropdownButton<Object> buildFloorDorm(var selectedDrom) {
    if(selectedDorm == '은혜관')
      return buildFloorGrace();
    else if(selectedDorm == '창조관')
      return buildFloorCreation();
    else
      return buildFloorBethel();
  }

  DropdownButton<Object> buildFloorBethel() {
    return DropdownButton(
            value: selectedFloor,
            items: floorBethel.map((value) {
              return DropdownMenuItem(
                value: value,
                child: Text(value),
              );
            }).toList(),
      onChanged: (value){
        if(value == '1층'){
          setState(() {
            selectedFloor = '1층';
            //floorMenu = (List) as List<DropdownButton>;buildFloorMenu2(floorGrace);
          });
        }else if(value == '2층') {
          setState(() {
            selectedFloor = '2층';
            //floorMenu = (List) as List<DropdownButton>;buildFloorMenu2(floorBethel);
          });
        }else if(value == '3층') {
          setState(() {
            selectedFloor  = '3층';
            //floorMenu = (List) as List<DropdownButton>;buildFloorMenu2(floorBethel);
          });
        }else if(value == '4층') {
          setState(() {
            selectedFloor  = '4층';
            //floorMenu = (List) as List<DropdownButton>;buildFloorMenu2(floorBethel);
          });
        }else if(value == '5층') {
          setState(() {
            selectedFloor  = '5층';
            //floorMenu = (List) as List<DropdownButton>;buildFloorMenu2(floorBethel);
          });
        }else if(value == '6층') {
          setState(() {
            selectedFloor  = '6층';
            //floorMenu = (List) as List<DropdownButton>;buildFloorMenu2(floorBethel);
          });
        }
      },);
  }

  DropdownButton<Object> buildFloorCreation() {
    return DropdownButton(
      value: selectedFloor,
      items: floorCreation.map((value) {
        return DropdownMenuItem(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (value){
        if(value == '1층'){
          setState(() {
            selectedFloor = '1층';
            //floorMenu = (List) as List<DropdownButton>;buildFloorMenu2(floorGrace);
          });
        }else if(value == '2층') {
          setState(() {
            selectedFloor = '2층';
            //floorMenu = (List) as List<DropdownButton>;buildFloorMenu2(floorBethel);
          });
        }else if(value == '3층') {
          setState(() {
            selectedFloor  = '3층';
            //floorMenu = (List) as List<DropdownButton>;buildFloorMenu2(floorBethel);
          });
        }else if(value == '4층') {
          setState(() {
            selectedFloor  = '4층';
            //floorMenu = (List) as List<DropdownButton>;buildFloorMenu2(floorBethel);
          });
        }
      },);
  }

  DropdownButton<Object> buildFloorGrace() {
    return DropdownButton(
      value: selectedFloor,
      items: floorGrace.map((value) {
        return DropdownMenuItem(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (value){
        if(value == '1층'){
          setState(() {
            selectedFloor = '1층';
            //floorMenu = (List) as List<DropdownButton>;buildFloorMenu2(floorGrace);
          });
        }else if(value == '2층') {
          setState(() {
            selectedFloor = '2층';
            //floorMenu = (List) as List<DropdownButton>;buildFloorMenu2(floorBethel);
          });
        }else if(value == '3층') {
          setState(() {
            selectedFloor  = '3층';
            //floorMenu = (List) as List<DropdownButton>;buildFloorMenu2(floorBethel);
          });
        }else if(value == '4층') {
          setState(() {
            selectedFloor  = '4층';
            //floorMenu = (List) as List<DropdownButton>;buildFloorMenu2(floorBethel);
          });
        }else if(value == '5층') {
          setState(() {
            selectedFloor  = '5층';
            //floorMenu = (List) as List<DropdownButton>;buildFloorMenu2(floorBethel);
          });
        }
      },);
  }

}
