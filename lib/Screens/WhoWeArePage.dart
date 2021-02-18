import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ward_store/Helpers/Images.dart';
import 'package:ward_store/Helpers/Texts.dart';
import 'package:ward_store/Widgets/CutomAppBar.dart';

class WhoPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CAppBar(title: whoPage,),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          textDirection: TextDirection.rtl,
          children: <Widget>[
            SizedBox(height: 80,),
            Image.asset(wardLogo),
            SizedBox(height: 30,),
            Container(width: 250, child: Text(whoWeText)),
          ],
        ),
      )
    );
  }
  
}