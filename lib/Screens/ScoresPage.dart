import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ward_store/Helpers/Texts.dart';
import 'package:ward_store/Widgets/CDrawer.dart';
import 'package:ward_store/Widgets/CutomAppBar.dart';

class ScorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: CAppBar(title: 'نقاطي'),
      drawer: CDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(16),
              child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,textDirection: TextDirection.rtl, children: <Widget>[
                Text('30', style: TextStyle(fontSize: 96, fontFamily: 'Cairo')),
                Text(
                  'نقطة',
                  style: TextStyle(fontSize: 20, fontFamily: 'Cairo'),
                ),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            Container(padding: EdgeInsets.all(16),child: Text(introduce, style: TextStyle(fontFamily: 'Cairo'))),
            SizedBox(
              height: 40,
            ),
            Container(
              color: Color(0xFFF7F8FA),
              padding: EdgeInsets.all(16),
              child: Row(
                textDirection: TextDirection.rtl,
                children: <Widget>[
                  Text('قيمة نقاطك الحالية'),
                  SizedBox(
                    width: 20,
                  ),
                  Text('0.10 ريال')
                ],
              ),
            ),
            SizedBox(height: 40,)
          ],
        ),
      ),
    );
  }
}
