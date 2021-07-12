import 'package:flutter/material.dart';

class DropDownMenuSignUP extends StatefulWidget {
  const DropDownMenuSignUP({Key? key}) : super(key: key);

  @override
  _DropDownMenuSignUPState createState() => _DropDownMenuSignUPState();
}

class _DropDownMenuSignUPState extends State<DropDownMenuSignUP> {
  var selectedDorm = '창조관';
  final dormList = ['창조관', '벧엘관', '은혜관'];
  final floor = ['1층', '2층', '3층'];
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
                  color: Colors.black, style: BorderStyle.solid, width: 0.800),
            ),
            child: DropdownButton(
                value: selectedDorm,
                items: dormList.map((value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value, textAlign: TextAlign.right,),
                  );
                }).toList(),
              onChanged: (value){
                if(value == '은혜관'){
                  selectedDorm = '은혜관';
                }else if(value == '벧엘관') {
                  selectedDorm = '벧엘관';
                }else if(value == '창조관') {
                  selectedDorm = '창조관';
                }
              },),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 187,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(
                  color: Colors.black, style: BorderStyle.solid, width: 0.800),
            ),
            child: DropdownButton(
              value: selectedFloor,
              items: floor.map((value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value){
              },),
          ),

        ]
    );
  }
}

/*
Container FloorButton(BuildContext context, var selectedValue) {
  final bethel = ['1층', '2층', '3층', '4층', '5층'];
  final grace = ['1층', '2층'];
  final creation = ['1층'];

  if(selectedValue=='벧엘관'){
    return Container(
      width: 187,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        border: Border.all(
            color: Colors.black, style: BorderStyle.solid, width: 0.800),
      ),
      child: DropdownButton(
        value: selectedValue,
        items: bethel.map((value) {
          return DropdownMenuItem(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (value){}),
    );
  }else if(selectedValue == '은혜관'){
    return Container(
      width: 187,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        border: Border.all(
            color: Colors.black, style: BorderStyle.solid, width: 0.800),
      ),
      child: DropdownButton(
          value: selectedValue,
          items: grace.map((value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (value){}),
    );
  }else{
    return Container(
      width: 187,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        border: Border.all(
            color: Colors.black, style: BorderStyle.solid, width: 0.800),
      ),
      child: DropdownButton(
          value: selectedValue,
          items: creation.map((value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (value){}),
    );
  }
}

*/


