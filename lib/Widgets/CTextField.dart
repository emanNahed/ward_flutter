import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ward_store/Helpers/Colors.dart';
import 'package:ward_store/Helpers/Texts.dart';

class CTextField extends StatelessWidget {
  Icon icon;
  String hintText;
  Icon preIcon;
  TextEditingController controller;
  String errorMess;
  bool enabled;

  CTextField({this.icon, this.hintText,this.enabled: true, this.preIcon, this.controller, this.errorMess});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, right: 55.0, left: 55.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration.collapsed(
          //icon: icon,
          hintText: hintText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0), borderSide: BorderSide(color: black)),
        ).copyWith(
          suffixIcon: preIcon,
          errorText: errorMess,
          prefixIcon: icon,
         // errorText: errorMess,
          enabled: enabled,
          contentPadding: EdgeInsets.all(8.0),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0), borderSide: BorderSide(width: 2.0, color: black)),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(25.0), borderSide: BorderSide(width: 2.0, color: black)),
        ),
        textAlign: TextAlign.right,

      ),
    );
  }
}

class CTextContainer extends StatelessWidget{
  String title;

  CTextContainer({this.title});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: black, width: 2),
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
        color: white100,
      ) ,
      child: Row(
        textDirection: TextDirection.rtl,
        children: <Widget>[
          Text(name),
          SizedBox(width: 10,),
          Text(title),
        ],

      ),
    );
  }

}
