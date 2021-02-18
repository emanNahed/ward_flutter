
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ward_store/Helpers/Colors.dart';

class CircularCheckBox extends StatefulWidget{
  bool checked= false;
  Color inActiveColor;
  Color activeColor;
  Function actions;

  CircularCheckBox({this.checked, this.activeColor, this.inActiveColor, this.actions});

  _CircularCheckBox createState () => _CircularCheckBox(checked: checked, actions: actions, activeColor: activeColor, inActiveColor: inActiveColor);
}

class _CircularCheckBox extends State<CircularCheckBox>{
  bool checked= false;
  Color inActiveColor;
  Color activeColor;
  Function actions;

  _CircularCheckBox({this.checked, this.activeColor, this.inActiveColor, this.actions});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      child: Container(
        width: 25,
        height: 25,
        margin: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          border: Border.all(color: activeColor, width: 2),
          color: checked? activeColor: inActiveColor,
          borderRadius: BorderRadius.all(Radius.circular(100)),
        ),
        child: checked? Icon(Icons.check, color: white100,): Text(""),

      ),
      onTap: (){setState(() {
        checked= !checked;
      });}
    );
  }

}