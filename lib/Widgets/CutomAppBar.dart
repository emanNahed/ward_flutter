

import 'package:flutter/material.dart';
import 'package:ward_store/Helpers/Colors.dart';

class CAppBar extends AppBar{
  CAppBar({Key key, String title, Drawer drawer}):
        super(
        key: key,
        backgroundColor: violet100,
        title: Center(
          child: Text(
            title,
            textDirection: TextDirection.rtl,
            style: TextStyle(fontFamily: 'Cairo', fontWeight: FontWeight.bold),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25.0),
              bottomRight: Radius.circular(25.0)),
        ), );

}