
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ward_store/Helpers/Colors.dart';
import 'package:ward_store/Helpers/Texts.dart';
import 'package:ward_store/Screens/LoginPage.dart';

class CButton extends StatelessWidget{
    Color mainColor;
    String text;
    Color colorText;
    Function actions;
    double width;
    double height;
    Color borderColor;

    CButton({this.borderColor= Colors.transparent,this.width= 250, this.height= 50, this.text, this.mainColor, this.colorText, this.actions});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Container(
        width: width,
        height: height,
        child: Center(child: Text(text, style: TextStyle(fontSize: 12, fontFamily: 'Cairo'))),
      ),
      onPressed: actions,
      color: mainColor,
      textColor: colorText,
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(30.0),
        side:BorderSide(color: borderColor,),
      ),
    );
  }

}